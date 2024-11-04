SELECT 
T1.Vendor_Id ,
T1.Country_Key_Id ,
T1.Name,
T1.Name_2,
T1.City,
T1.Sort_Field,
T1.Authorization_Group_Id,
T1.Industry_Key_Id,
T1.Group_Key,
T1.Vendor_Account_Group_Id
FROM {{ref('vw_vendor')}} T1