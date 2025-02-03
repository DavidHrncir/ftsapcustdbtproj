Select
T001W.MANDT AS CLIENT_ID
,T001W.WERKS AS PLANT_ID
,T001W.FSH_MG_ARUN_REQ AS ORDER_ALLOCATION_RUN
,T001W.TAXIW AS TAX_INDICATOR_PLANT_ID
,T001W.CITYC AS CITY_CODE_ID
,T001W.REGIO AS REGION_ID
,T001W.FABKL AS FACTORY_CALENDAR_ID
,T001W.MGVLAUPD AS ACTUAL_ACTIVITIES_UPDATED
,T001W.MISCH AS MIXED_COSTING
,T001W.OIHVTYPE AS VENDOR_TYPE
,T001W.EKORG AS PURCHASING_ORGANIZATION_ID
,T001W.NODETYPE AS NODE_TYPE_SUPPLY_CHAIN_NETWORK_ID
,T001W.STORETYPE AS STORE_CAT
,T001W.VTWEG AS DISTRIB_CHANNEL_ID
,T001W.TXNAM_MA1 AS TEXT_1ST_DUNNING
,T001W.OIHCREDIPI AS IPI_CREDIT_ALLOWED
,T001W.KUNNR AS CUSTOMER_NUMBER_PLANT_ID
,T001W.NAME1 AS NAME
,T001W.FSH_SEAIM AS SEASON_ACTIVE_IN_INVENTORY_MANAGEMENT
,T001W.ADRNR AS ADDRESS_ID
,T001W.BZIRK AS SALES_DISTRICT_ID
,T001W.SPRAS AS LANGUAGE_KEY_ID
,T001W.STRAS AS STREET_AND_HOUSE_NUMBER
,T001W.ZONE1 AS SUPPLY_REGION_REGION_SUPPLIED_ID
,T001W.VKORG AS SALES_ORGANIZATION_ID
,T001W.NSCHEMA AS STRUCTURE_NAME_FORMATION_ID
,T001W.DEP_STORE AS SUPERIOR_DEPARTMENT_STORE_ID
,T001W.BEDPL AS ACTIVATING_REQUIREMENTS_PLANNING
,T001W.LIFNR AS VENDOR_NUMBER_PLANT_ID
,T001W.PFACH AS PO_BOX
,T001W.SPART AS INT_CO_BILLING_DIV_ID
,T001W.LET03 AS THIRD_REMINDER_EXPED
,T001W.OILIVAL AS EXCHANGE_VALUATION_INDICATOR
,T001W.SOURCING AS AF_SRCE_DET_VIA_ATP
,T001W.WKSOP AS SOP_PLANT
,T001W.KORDB AS SOURCE_LIST
,T001W.COUNC AS COUNTY_CODE_ID
,T001W.VSTEL AS SHIPPING_POINT_ID
,T001W.TXNAM_MA3 AS TEXT_3RD_DUNNING
,T001W.LET02 AS SECOND_REMINDER_EXPED
,T001W.DVSART AS BATCH_TYPE_DMS_USED
,T001W.PSTLZ AS POSTAL_CODE
,T001W.BZQHL AS TAKE_REGULAR_VENDOR_INTO_ACCOUNT
,T001W.MGVUPD AS ACTUAL_COSTING
,T001W.PKOSA AS COST_OBJ_CONTROLLING
,T001W.CHAZV AS BATCH_STATUS_MGMT
,T001W.TXJCD AS TAX_JURISDICTION_ID
,T001W.AWSLS AS VARIANCE_KEY_ID
,T001W.CHAZV_OLD AS CHAZV_OLD
,T001W.MGVLAREVAL AS CONTROL_CREDIT_COST_CENTERS
,T001W.BWKEY AS VALUATION_AREA_ID
,T001W.VLFKZ AS PLANT_CATEGORY
,T001W.LET01 AS FIRST_REMINDER_EXPED
,T001W.TXNAM_MA2 AS TEXT_2ND_DUNNING
,T001W.FSH_BOM_MAINTENANCE AS CONTROL_BOM
,T001W.KKOWK AS CONDS_AT_PLANT_LEVEL
,T001W.J_1BBRANCH AS BUSINESS_PLACE_ID
,T001W.BETOL AS PO_TOLERANCE
,T001W.VTBFI AS SALES_AREA_DETRM
,T001W.NAME2 AS NAME_2
,T001W.LAND1 AS COUNTRY_KEY_ID
,T001W.ACHVM AS ARCHIVING_MARKER
,T001W.FPRFW AS DISTRIB_PROFILE_PLANT_ID
,T001W.ORT01 AS CITY
,T001W.IWERK AS MAINTENANCE_PLANNING_PLANT_ID
,T001W._FIVETRAN_DELETED AS _FIVETRAN_DELETED
,T001W._FIVETRAN_SYNCED AS _FIVETRAN_SYNCED
,T001W._FIVETRAN_SAP_ARCHIVED AS _FIVETRAN_SAP_ARCHIVED
from {{source('dhsaphana_sapabap1', 't001w')}}
where
T001W.MANDT in ('800')
