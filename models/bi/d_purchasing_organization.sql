SELECT
  T1.Company_Code_Id, 
  T1.Purchasing_Organization_Id, 
  T1.Description 
FROM {{ref('vw_purchasing_organization')}} T1