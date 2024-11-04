SELECT t1.Plant_Id , t1.Name AS Plant_Name, t1.Country_Key_Id 
FROM  {{ref('vw_plant')}} t1;