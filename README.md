# SAP BI

## Project use
This project contains a set of cascading views that breaks out SAP tables into a standard English format.  It is based on the SAP ERP on HANA connector at the time of 01/15/2025.  It is used in Fivetran as a dbt Core project.

## Tables used
AFIH, AFKO, AUFK, DD07L, DD07T, EKBE, EKES, EKET, EKKO, EKPO, KNA1, LFA1, LIKP, LIPS, MAKT, MARA, PMCO, QMEL, QMFE, QMIH, QMSM, QPCD, QPCT, QPGR, QPGT, T001, T001W, T005, T005T, T024, T024E, T025, T025T, T134, T134T, T161, T161T, T165M, T165R, T179, T179T, TCURC, TCURT, TCURV, TKA01, TSPA, TSPAT, TVAG, TVAGT, TVAU, TVAUT, TVKO, TVKOT, VBAK, VBAP, VBKD, VBPA, VBRK, VBRP, VBUK, VBUP

### Commands to build:
- dbt run

## Sample queries:
### Top 10 Sales by Material Type
SELECT
  d_material.material_type_description,
  COUNT(f_sales_order.material_id) AS total_sales_orders
FROM
  f_sales_order
  JOIN d_material ON f_sales_order.material_id = d_material.material_id
GROUP BY
  d_material.material_type_description
ORDER BY 
  total_sales_orders desc
LIMIT 10;

### Lowest sales orders by plant (under 1000).
SELECT
  d_plant.plant_id,
  d_plant.plant_name,
  COUNT(f_sales_order.material_id) AS total_sales_orders
FROM
  f_sales_order
  JOIN d_plant ON f_sales_order.plant_id = d_plant.plant_id
GROUP BY
  d_plant.plant_id,
  d_plant.plant_name
HAVING 
  total_sales_orders < 1000
ORDER BY
  total_sales_orders;

### Top 10 purchased materials is USD.
SELECT
  d_material.material_id,
  d_material.material_description,
  sum(f_purchasing_order.purchasing_document_currency_amount) as total_purchase
FROM
  f_purchasing_order
  JOIN d_material ON f_purchasing_order.material_id = d_material.material_id
WHERE
  f_purchasing_order.currency_id = 'USD'
GROUP BY
  d_material.material_id,
  d_material.material_description
ORDER BY 
  total_purchase desc
LIMIT 10;

### Num of purchase orders by org.
SELECT
  d_purchasing_organization.purchasing_organization_id,
  d_purchasing_organization.description,
  COUNT(f_purchasing_order.purchasing_document_id) AS total_purchasing_documents
FROM
  f_purchasing_order
  JOIN d_purchasing_organization ON f_purchasing_order.purchasing_organization_id = d_purchasing_organization.purchasing_organization_id
GROUP BY
  d_purchasing_organization.purchasing_organization_id,
  d_purchasing_organization.description
ORDER BY 
  total_purchasing_documents desc;
  

