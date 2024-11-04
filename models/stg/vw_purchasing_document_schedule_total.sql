SELECT 
    V2.Purchasing_Document_Id  , 
    V2.Purchasing_Document_Item_Id, 
    MAX(V2.Item_Delivery_Date) AS Lastest_Scheduled_Delivery_Date,
    SUM(V2.Scheduled_Quantity) AS Total_Scheduled_Delivery_Quantity
FROM {{ref('vw_purchasing_document_schedule_line')}} V2  
GROUP BY 1,2