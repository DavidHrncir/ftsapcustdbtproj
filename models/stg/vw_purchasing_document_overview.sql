SELECT 
    T1.Purchasing_Document_Id ,
    T1.Purchasing_Document_Item_Id ,
    MAX(t1.Delivery_Completed) Delivery_Completed ,
    MAX(CASE WHEN t1.Trans_Event_Type_Id = '1' then t1.Posting_In_The_Document_Date ELSE NULL end) LATEST_GOODS_RECEIVE_DATE,
    MAX(CASE WHEN t1.Trans_Event_Type_Id = '2' then t1.Posting_In_The_Document_Date ELSE NULL end) LATEST_INVOICE_RECEIVE_DATE,
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '1' then CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Qty ELSE t1.Qty end ELSE NULL end) AS RECEIVED_QUANTITY,
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '1' then CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Loccur_Amount ELSE t1.Loccur_Amount  END ELSE NULL END) AS RECEIVED_VALUE_IN_LOCAL_CURR,
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '1' THEN CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Amount_Document_Currency_Val ELSE t1.Amount_Document_Currency_Val  END ELSE NULL END) AS RECEIVED_VALUE_IN_DOC_CURR,
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '2' then CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Qty  ELSE t1.Qty END ELSE NULL end) AS INVOICE_QUANTITY, 
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '2' THEN CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Voice_Val ELSE t1.Voice_Val  END ELSE NULL END) AS INVOICE_VALUE_LOCAL_CURR,
    SUM(CASE WHEN t1.Trans_Event_Type_Id = '2' THEN CASE when Debitcredit_Indicator = 'H' THEN -1*t1.Voice_Fc_Val ELSE t1.Voice_Fc_Val  END ELSE NULL END) AS INVOICE_VALUE_FOREIGN_CURR,
        MAX(t1._FIVETRAN_DELETED) as _Fivetran_Deleted,
    MAX(t1._FIVETRAN_SYNCED) as _Fivetran_Synced
FROM {{ ref("vw_purchasing_document_history") }} t1
GROUP BY 
    T1.Purchasing_Document_Id ,
    T1.Purchasing_Document_Item_Id