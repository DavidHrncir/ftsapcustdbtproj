SELECT T1.Purchasing_Document_Id
	,t1.Purchasing_Document_Item_Id
	,T2.Company_Code_Id
	,T3.Currency_Id
	,T1.Material_Id
	,T1.Plant_Id
	,T2.Purchasing_Group_Id
	,T2.Purchasing_Organization_Id
	,T2.Vendor_Id
	,T1.Order_Uom_Id
	,T2.Purchasing_Document_Date
	,t5.Lastest_Scheduled_Delivery_Date AS Scheduled_Delivery_Date
	,CAST((T4.LATEST_GOODS_RECEIVE_DATE - T2.Purchasing_Document_Date) AS DECIMAL(15, 2)) AS Purchase_Deliver_Late_Days
	,CAST((T4.LATEST_GOODS_RECEIVE_DATE - T5.Lastest_Scheduled_Delivery_Date) AS DECIMAL(15, 2)) AS Purchase_Late_Lead_Days
	,
	CASE 
		WHEN t1.Returns_Item = ''
			THEN T1.Purchase_Order_Quantity
		ELSE - 1 * T1.Purchase_Order_Quantity
		END AS Purchase_Order_Quantity
	,CASE 
		WHEN T1.Delivery_Completed <> ''
			THEN CAST(0 AS DECIMAL(15, 3))
		ELSE (T1.Purchase_Order_Quantity - COALESCE(T4.RECEIVED_QUANTITY,0))
		END AS Purchase_Open_Quantity
	,T4.RECEIVED_QUANTITY AS Purchasing_Delivered_Quantity
	,
	CASE 
		WHEN T4.LATEST_GOODS_RECEIVE_DATE > T5.Lastest_Scheduled_Delivery_Date
			THEN T4.RECEIVED_QUANTITY
		ELSE CAST(0 AS DECIMAL(15, 3))
		END AS Purchase_Late_Quantity
	,CASE 
		WHEN T1.Rejection_Indicator = 'X'
			THEN T1.Purchase_Order_Quantity
		ELSE CAST(0 AS DECIMAL(15, 3))
		END AS Cancel_Purchase_Quantity
	,CAST(T1.Net_Order_Po_Currency_Val * CASE 
			WHEN T2.Exchange_Rate < 0
				THEN - 1 / T2.Exchange_Rate
			ELSE T2.Exchange_Rate
			END AS DECIMAL(15, 2)) AS Purchase_Order_Amount
	,T1.Net_Order_Po_Currency_Val Purchasing_Document_Currency_Amount
	,t2.Currency_Id Document_Currency_Id
	,CASE 
		WHEN T4.Delivery_Completed IS NOT NULL
			THEN CAST(0 AS DECIMAL(15, 2))
		ELSE (
				T1.Net_Order_Po_Currency_Val  * (
					CASE 
						WHEN T2.Exchange_Rate < 0
							THEN - 1 / T2.Exchange_Rate
						ELSE T2.Exchange_Rate
						END
					)
				) - T4.RECEIVED_VALUE_IN_LOCAL_CURR
		END AS Purchase_Open_Amount
	,T4.RECEIVED_VALUE_IN_LOCAL_CURR AS Purchase_Delivered_Amount
	,CASE 
		WHEN T1.Rejection_Indicator = 'X'
			THEN (
					CAST(T1.Net_Order_Po_Currency_Val * CASE 
							WHEN T2.Exchange_Rate < 0
								THEN - 1 / T2.Exchange_Rate
							ELSE T2.Exchange_Rate
							END AS DECIMAL(15, 2))
					)
		ELSE CAST(0 AS DECIMAL(15, 2))
		END AS Cancel_Purchase_Amount
	,CASE 
		WHEN T4.LATEST_GOODS_RECEIVE_DATE > T5.Lastest_Scheduled_Delivery_Date
			THEN T4.RECEIVED_VALUE_IN_LOCAL_CURR
		ELSE CAST(0 AS DECIMAL(15, 2))
		END AS Purchase_Late_Amount
	,
	T4.INVOICE_VALUE_LOCAL_CURR AS Purchase_Invoiced_Amount
	,CAST(1 AS DECIMAL(15, 0)) AS Purchase_Order_Item_Count
	,CASE 
		WHEN T4.LATEST_GOODS_RECEIVE_DATE > T5.Lastest_Scheduled_Delivery_Date
			THEN CAST(1 AS DECIMAL(15, 0))
		ELSE CAST(0 AS DECIMAL(15, 0))
		END Purchase_Item_Late_Count
	,
	CASE 
		WHEN COALESCE(T4.Delivery_Completed, 'N') <> ' '
			AND COALESCE (T4.RECEIVED_QUANTITY,0) < T1.Purchase_Order_Quantity
			THEN CAST(1 AS DECIMAL(15, 0))
		ELSE CAST(0 AS DECIMAL(15, 0))
		END AS PURCHASE_ITEM_OPEN_COUNT
	,CASE 
		WHEN COALESCE(T4.Delivery_Completed, 'N') <> ' '
			OR T4.RECEIVED_QUANTITY >= T1.Purchase_Order_Quantity
			THEN CAST(1 AS DECIMAL(15, 0))
		ELSE CAST(0 AS DECIMAL(15, 0))
		END AS PURCHASE_ITEM_CLOSED_COUNT
FROM {{ref('vw_purchasing_document_item')}} T1
LEFT OUTER JOIN {{ref('vw_purchasing_document_header')}} T2 ON T2.Purchasing_Document_Id = T1.Purchasing_Document_Id
LEFT OUTER JOIN {{ref('vw_company')}} T3 ON T3.Company_Code_Id = T2.Company_Code_Id
LEFT OUTER JOIN {{ref('vw_purchasing_document_overview')}} T4 ON T4.Purchasing_Document_Id = T1.Purchasing_Document_Id
	AND T4.Purchasing_Document_Item_Id = T1.Purchasing_Document_Item_Id
LEFT OUTER JOIN {{ref('vw_purchasing_document_schedule_total')}} T5 ON T1.Purchasing_Document_Id = T5.Purchasing_Document_Id
	AND T1.Purchasing_Document_Item_Id = T5.Purchasing_Document_Item_Id