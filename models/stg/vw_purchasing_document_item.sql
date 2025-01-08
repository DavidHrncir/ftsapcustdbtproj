Select
EKPO.MANDT AS CLIENT_ID
,EKPO.EBELN AS PURCHASING_DOCUMENT_ID
,EKPO.EBELP AS PURCHASING_DOCUMENT_ITEM_ID
,EKPO.LOEKZ AS DELETION_INDICATOR
,EKPO.STATU AS RFQ_STATUS
,CASE WHEN EKPO.AEDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.AEDAT, {{ date_formatstr() }} ) END AS LAST_CHANGED_ON_DATE
,EKPO.TXZ01 AS SHORT_TEXT
,EKPO.MATNR AS MATERIAL_ID
,EKPO.EMATN AS MATERIAL_NUMBER_ID
,EKPO.BUKRS AS COMPANY_CODE_ID
,EKPO.WERKS AS PLANT_ID
,EKPO.LGORT AS STORAGE_LOCATION_ID
,EKPO.BEDNR AS REQUIREMENT_TRACKING_NUMBER
,EKPO.MATKL AS MATERIAL_GROUP_ID
,EKPO.INFNR AS NUMBER_PURCHASING_INFO_ID
,EKPO.IDNLF AS MATERIAL_NUMBER_USED_BY_VENDOR
,EKPO.KTMNG AS TARGET_QUANTITY
,EKPO.MENGE AS PURCHASE_ORDER_QUANTITY
,EKPO.MEINS AS ORDER_UOM_ID
,EKPO.BPRME AS ORDER_PRICE_PURCHASING_UOM_ID
,EKPO.BPUMZ AS QUANTITY_CONVERSION
,EKPO.BPUMN AS BPUMN
,EKPO.UMREZ AS EQUAL_TO
,EKPO.UMREN AS DENOMINATOR
,EKPO.NETPR AS NET_ORDER_PRICE_VAL
,EKPO.PEINH AS PRICE_UNIT
,EKPO.NETWR AS NET_ORDER_PO_CURRENCY_VAL
,EKPO.BRTWR AS GROSS_ORDER_PO_CURRENCY_VAL
,CASE WHEN EKPO.AGDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.AGDAT, {{ date_formatstr() }} ) END AS QUOTATION_DEADLINE_DATE
,EKPO.WEBAZ AS GR_PROCESSING_TIME
,EKPO.MWSKZ AS TAX_CODE_ID
,EKPO.BONUS AS SETTLEMENT_GROUP_1_PURCHASING
,EKPO.INSMK AS STOCK_TYPE
,EKPO.SPINF AS INDICATOR_UPDATE_INFO
,EKPO.PRSDR AS PRICE_PRINTOUT
,EKPO.SCHPR AS INDICATOR_ESTIMATED_PRICE
,EKPO.MAHNZ AS NUMBER_REMINDERS_EXPEDITERS
,EKPO.MAHN1 AS "1ST_REMINDER_EXPED"
,EKPO.MAHN2 AS "2ND_REMINDER_EXPED"
,EKPO.MAHN3 AS "3RD_REMINDER_EXPED"
,EKPO.UEBTO AS OVERDELIVERY_TOLERANCE_LIMIT
,EKPO.UEBTK AS UNLTD_OVERDELIVERY
,EKPO.UNTTO AS UNDERDELIVERY_TOLERANCE_LIMIT
,EKPO.BWTAR AS VALUATION_TYPE_ID
,EKPO.BWTTY AS VALUATION_CATEGORY_ID
,EKPO.ABSKZ AS REJECTION_INDICATOR
,EKPO.AGMEM AS INTERNAL_COMMENT_ON_QUOTATION_ID
,EKPO.ELIKZ AS DELIVERY_COMPLETED
,EKPO.EREKZ AS FINAL_INVOICE_INDICATOR
,EKPO.PSTYP AS ITEM_CATEGORY_ID
,EKPO.KNTTP AS ACCOUNT_ASSIGNMENT_CATEGORY_ID
,EKPO.KZVBR AS CONSUMPTION_POSTING
,EKPO.VRTKZ AS DISTRIBUT_INDICATOR
,EKPO.TWRKZ AS PARTIAL_INVOICE_INDICATOR
,EKPO.WEPOS AS GOODS_RECEIPT_INDICATOR
,EKPO.WEUNB AS GOODS_RECEIPT_NON_VALUATED
,EKPO.REPOS AS INVOICE_RECEIPT_INDICATOR
,EKPO.WEBRE AS GR_BASED_INV_VERIF
,EKPO.KZABS AS ORDER_ACKNOWLEDGMENT_REQUIREMENT
,EKPO.LABNR AS ORDER_ACKNOWLEDGMENT_NUMBER
,EKPO.KONNR AS OUTLINE_AGREEMENT_ID
,EKPO.KTPNR AS PRINC_AGREEMENT_ITEM_ID
,CASE WHEN EKPO.ABDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.ABDAT, {{ date_formatstr() }} ) END AS RECONCILIATION_DATE
,EKPO.ABFTZ AS AGREED_CUMULATIVE_QUANTITY
,EKPO.ETFZ1 AS FIRM_ZONE
,EKPO.ETFZ2 AS TRADE_OFF_ZONE
,EKPO.KZSTU AS BINDING_ON_MRP
,EKPO.NOTKZ AS EXCLUSION_INDICATOR
,EKPO.LMEIN AS BASE_UOM_ID
,EKPO.EVERS AS SHIPPING_INSTRUCTION_ID
,EKPO.ZWERT AS OA_TARGET_VAL
,EKPO.NAVNW AS NON_DEDUCTIBLE_PUT_TAX_VAL
,EKPO.ABMNG AS STANDARD_RELEASE_ORDER_QUANTITY
,CASE WHEN EKPO.PRDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.PRDAT, {{ date_formatstr() }} ) END AS PRICE_DETERMINATION_DATE
,EKPO.BSTYP AS PURCH_DOC_CATEGORY
,EKPO.EFFWR AS EFFECTIVE_ITEM_VAL
,EKPO.XOBLR AS ITEM_AFFECTS_COMMITMENTS
,EKPO.KUNNR AS CUSTOMER_ID
,EKPO.ADRNR AS ADDRESS_ID
,EKPO.EKKOL AS CONDITION_GROUP_WITH_VENDOR
,EKPO.SKTOF AS NO_CASH_DISCOUNT
,EKPO.STAFO AS UPDATE_GROUP_STATS_ID
,EKPO.PLIFZ AS PLANNED_DELIVERY_TIME_IN_DAYS
,EKPO.NTGEW AS NET_WEIGHT
,EKPO.GEWEI AS WEIGHT_UOM_ID
,EKPO.TXJCD AS TAX_JURISDICTION_ID
,EKPO.ETDRK AS PRINT_RELEVANT
,EKPO.SOBKZ AS SPECIAL_STOCK_ID
,EKPO.ARSNR AS SETTLEMENT_RESERVATION_NUMBER
,EKPO.ARSPS AS ITEM_SETTLEM_RESER
,EKPO.INSNC AS NOT_CHANGEABLE
,EKPO.SSQSS AS QM_CONTROL_KEY_ID
,EKPO.ZGTYP AS CERTIFICATE_TYPE_ID
,EKPO.EAN11 AS EAN
,EKPO.BSTAE AS CONFIRMATION_CONTROL_KEY_ID
,EKPO.REVLV AS REVISION_LEVEL
,EKPO.GEBER AS FUND_ID
,EKPO.FISTL AS FUNDS_CENTER_ID
,EKPO.FIPOS AS COMMITMENT_ITEM_ID
,EKPO.KO_GSBER AS BUS_AREA_REPORTED_TO_PARTNER_ID
,EKPO.KO_PARGB AS PARTNERS_ASSUMED_BUS_AREA_ID
,EKPO.KO_PRCTR AS PROFIT_CENTER_ID
,EKPO.KO_PPRCTR AS PARTNER_PROFIT_CENTER_ID
,EKPO.MEPRF AS PRICING_DATE_CONTROL
,EKPO.BRGEW AS GROSS_WEIGHT
,EKPO.VOLUM AS VOLUME
,EKPO.VOLEH AS VOLUME_UOM_ID
,EKPO.INCO1 AS INCOTERMS_ID
,EKPO.INCO2 AS INCOTERMS_PART_2
,EKPO.VORAB AS ADVANCE_PROCUREMENT
,EKPO.KOLIF AS PRIOR_VENDOR_ID
,EKPO.LTSNR AS VENDOR_SUBRANGE_ID
,EKPO.PACKNO AS PACKAGE_NUMBER_ID
,EKPO.FPLNR AS INVOICING_PLAN_NUMBER
,EKPO.GNETWR AS CURRENTLY_NOT_USED_VAL
,EKPO.STAPO AS ITEM_IS_STATISTICAL
,EKPO.UEBPO AS HIGHER_LEVEL_ITEM_ID
,CASE WHEN EKPO.LEWED IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.LEWED, {{ date_formatstr() }} ) END AS LATEST_POSSIBLE_GOODS_RECEIPT_DATE
,EKPO.EMLIF AS VENDOR_ID
,EKPO.LBLKZ AS SUBCONTRACTING_VENDOR
,EKPO.SATNR AS CROSS_PLANT_CM_ID
,EKPO.ATTYP AS MATERIAL_CATEGORY
,EKPO.VSART AS SHIPPING_TYPE_ID
,EKPO.HANDOVERLOC AS HANDOVER_LOCATION
,EKPO.KANBA AS KANBAN_INDICATOR
,EKPO.ADRN2 AS NUMBER_DELIVERY_ADDRESS_ID
,EKPO.CUOBJ AS INTERNAL_OBJECT_NO
,EKPO.XERSY AS EVAL_RECEIPT_SETT
,CASE WHEN EKPO.EILDT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.EILDT, {{ date_formatstr() }} ) END AS GR_B_SETTLEMENT_FROM_DATE
,CASE WHEN EKPO.DRDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.DRDAT, {{ date_formatstr() }} ) END AS LAST_TRANSMISSION_DATE
,EKPO.DRUHR AS TIM
,EKPO.DRUNR AS SEQUENTIAL_NUMBER
,EKPO.AKTNR AS PROMOTION_ID
,EKPO.ABELN AS ALLOCATION_TABLE_NUMBER_ID
,EKPO.ABELP AS ITEM_NUMBER_ALLOCATION_TABLE_ID
,EKPO.ANZPU AS NUMBER_POINTS
,EKPO.PUNEI AS POINTS_UOM_ID
,EKPO.SAISO AS SEASON_CATEGORY_ID
,EKPO.SAISJ AS SEASON_YEAR
,EKPO.EBON2 AS SETTLEMENT_GROUP_2
,EKPO.EBON3 AS SETTLEMENT_GROUP_3
,EKPO.EBONF AS SUBSEQ_SETTLEMENT
,EKPO.MLMAA AS MAT_LEDGER_ACTIVE
,EKPO.MHDRZ AS MINIMUM_REMAINING_SHELF_LIFE
,EKPO.ANFNR AS RFQ_NUMBER_ID
,EKPO.ANFPS AS ITEM_NUMBER_RFQ_ID
,EKPO.KZKFG AS ORIGIN_CONFIGURATION
,EKPO.USEQU AS QUOTA_ARRANGEMENT_USAGE_ID
,EKPO.UMSOK AS SP_IND_STOCK_TFR_ID
,EKPO.BANFN AS PURCHASE_REQUISITION_NUMBER
,EKPO.BNFPO AS ITEM_REQUISITION_ID
,EKPO.MTART AS MATERIAL_TYPE_ID
,EKPO.UPTYP AS SUBITEM_CATEGORY_ID
,EKPO.UPVOR AS SUBITEMS_EXIST
,EKPO.KZWI1 AS SUBTOTAL_1_VAL
,EKPO.KZWI2 AS SUBTOTAL_2_VAL
,EKPO.KZWI3 AS SUBTOTAL_3_VAL
,EKPO.KZWI4 AS SUBTOTAL_4_VAL
,EKPO.KZWI5 AS SUBTOTAL_5_VAL
,EKPO.KZWI6 AS SUBTOTAL_6_VAL
,EKPO.SIKGR AS PROCESSING_KEY_SUB_ITEMS_ID
,EKPO.MFZHI AS MAXIMUM_CMG_QUANTITY
,EKPO.FFZHI AS MAXIMUM_CUM_PGQ
,EKPO.RETPO AS RETURNS_ITEM
,EKPO.AUREL AS RELEVANT_TO_ALLOCATION_TABLE
,EKPO.BSGRU AS REASON_ORDERING_ID
,EKPO.LFRET AS DEL_TYPE_F_RETURNS_ID
,EKPO.MFRGR AS MATERIAL_FREIGHT_GROUP_ID
,EKPO.NRFHG AS QUAL_F_FREEGOODSDIS
,EKPO.J_1BNBM AS BRAZILIAN_NCM_CODE_ID
,EKPO.J_1BMATUSE AS USAGE_THE_MATERIAL
,EKPO.J_1BMATORG AS ORIGIN_THE_MATERIAL
,EKPO.J_1BOWNPRO AS PRODUCED_IN_HOUSE
,EKPO.J_1BINDUST AS MATERIAL_CFOP_CATEGORY
,EKPO.ABUEB AS RELEASE_CREATION_PROFILE_ID
,CASE WHEN EKPO.NLABD IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.NLABD, {{ date_formatstr() }} ) END AS NEXT_FORECAST_DELIVERY_SCHEDULE_TRANSM_DATE
,CASE WHEN EKPO.NFABD IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.NFABD, {{ date_formatstr() }} ) END AS NEXT_JIT_DELIVERY_SCHEDULE_TRANSMISSION_DATE
,EKPO.KZBWS AS SPECIAL_STOCK_VALUATION
,EKPO.BONBA AS REBATE_BASIS_1_VAL
,EKPO.FABKZ AS JIT_SCHED_INDICATOR
,EKPO.J_1AINDXP AS INFLATION_INDEX_ID
,CASE WHEN EKPO.J_1AIDATEP IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.J_1AIDATEP, {{ date_formatstr() }} ) END AS INFLATION_INDEX_DATE
,EKPO.MPROF AS MFR_PART_PROFILE_ID
,EKPO.EGLKZ AS FINAL_DELIVERY
,EKPO.KZTLF AS PARTIAL_DELIV_ITEM
,EKPO.KZFME AS UNITS_MEASURE_USAGE
,EKPO.RDPRF AS ROUNDING_PROFILE_ID
,EKPO.TECHS AS STANDARD_VARIANT
,EKPO.CHG_SRV AS CONFIGURATION_CHANGED
,EKPO.CHG_FPLNR AS CHG_FPLNR
,EKPO.MFRPN AS MANUFACTURER_PART_NUMBER
,EKPO.MFRNR AS MANUFACTURER_NUMBER_ID
,EKPO.EMNFR AS EXT_MANUFACTURER
,EKPO.NOVET AS ITEM_BLOCKED_SD_DELIVERY
,EKPO.AFNAM AS NAME_REQUISITIONER_REQUESTER
,EKPO.TZONRC AS TIME_ZONE_RECIPIENT_LOCATION_ID
,EKPO.IPRKZ AS PERIOD_IND_SLED
,EKPO.LEBRE AS SERVICE_BASED_INVOICE_VERIFICATION
,EKPO.BERID AS MRP_AREA_ID
,EKPO.XCONDITIONS AS XCONDITIONS
,EKPO.APOMS AS APO_AS_PLANNING_SYSTEM
,EKPO.CCOMP AS STOCK_TRANSFER_CAT
,EKPO.GRANT_NBR AS "GRANT"
,EKPO.FKBER AS FUNCTIONAL_AREA_ID
,EKPO.STATUS AS ITEM_STATUS
,EKPO.RESLO AS ISSUING_STORAGE_LOC_ID
,EKPO.KBLNR AS EARMARKED_FUNDS_ID
,EKPO.KBLPOS AS EARMARKED_FUNDS_DOCUMENT_ITEM_ID
,EKPO.WEORA AS ACCEPTANCE_AT_ORIGIN
,EKPO.SRV_BAS_COM AS SERVICE_BASED_COMMITMENT
,EKPO.PRIO_URG AS REQUIREMENT_URGENCY_ID
,EKPO.PRIO_REQ AS REQUIREMENT_PRIORITY_ID
,EKPO.EMPST AS RECEIVING_POINT
,EKPO.DIFF_INVOICE AS DIFFERENTIAL_INVOICING
,EKPO.TRMRISK_RELEVANT AS RISK_RELEVANCY_IN_PURCHASING
,EKPO.SPE_ABGRU AS REASON_REJECTION
,EKPO.SPE_CRM_SO AS CRM_SALES_ORDER_NUMBER_TPOP_PROCESS
,EKPO.SPE_CRM_SO_ITEM AS CRM_SALES_ORDER_ITEM_NUMBER_IN_TPOP_PROC
,EKPO.SPE_CRM_REF_SO AS CRM_REF_ORDER_NUMBER_TPOP_PROCESS
,EKPO.SPE_CRM_REF_ITEM AS CRM_REFERENCE_ITEM_NUMBER_IN_TPOP_PROC
,EKPO.SPE_CRM_FKREL AS BILLING_RELEVANCE_CRM
,EKPO.SPE_CHNG_SYS AS LAST_CHANGERS_SYSTEM_TYPE
,EKPO.SPE_INSMK_SRC AS SOURCE_STOR_LOC_STOCK_TYPE
,EKPO.SPE_CQ_CTRLTYPE AS CQ_CONTROL_TYPE
,EKPO.SPE_CQ_NOCQ AS NO_TRANSMISSION_CQS_IN_SA_RELEASE
,EKPO.REASON_CODE AS GOODS_RECEIPT_REASON_CODE
,EKPO.CQU_SAR AS CUMULATIVE_GRS_FROM_REDIRECTED_POS
,EKPO.ANZSN AS NUMBER_SERIAL_NUMBERS
,EKPO.SPE_EWM_DTC AS EWM_DEL_TOL_CHK
,EKPO.EXLIN AS ITEM_NUMBER_LENGTH
,EKPO.EXSNR AS EXTERNAL_SORTING
,EKPO.EHTYP AS EXTERNAL_HIERARCHY_CATEGORY_ID
,EKPO.RETPC AS RETENTION_IN_PERCENT
,EKPO.DPTYP AS DOWN_PAYMENT_INDICATOR
,EKPO.DPPCT AS DOWN_PAYMENT_PERCENTAGE
,EKPO.DPAMT AS DOWN_PAYMENT_AMOUNT_VAL
,CASE WHEN EKPO.DPDAT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.DPDAT, {{ date_formatstr() }} ) END AS DUE_DOWN_PAYMENT_DATE
,EKPO.FLS_RSTO AS ENH_STORE_RETURN
,EKPO.EXT_RFX_NUMBER AS DOCUMENT_NO_EXTERNAL_DOC
,EKPO.EXT_RFX_ITEM AS ITEM_NUMBER_EXTERNAL_DOCUMENT
,EKPO.EXT_RFX_SYSTEM AS LOGICAL_SYSTEM_ID
,EKPO.SRM_CONTRACT_ID AS CENTRAL_CONTRACT
,EKPO.SRM_CONTRACT_ITM AS CENTRAL_CONTRACT_ITEM_NUMBER
,EKPO.BLK_REASON_ID AS BLOCKING_REASON_ID
,EKPO.BLK_REASON_TXT AS BLOCKING_REASON_TEXT
,EKPO.ITCONS AS REAL_TIME_CONS_POST
,EKPO.FIXMG AS DELIVERY_DATE_AND_QUANTITY_FIXED
,EKPO.WABWE AS GI_BASED_GOODS_RCPT
,EKPO.CMPL_DLV_ITM AS COMPLETE_DELIVERY
,EKPO.INCO2_L AS INCOTERMS_LOCATION_1
,EKPO.INCO3_L AS INCOTERMS_LOCATION_2
,EKPO.TC_AUT_DET AS TAX_CODE_AUTOMATICALLY_DETERMINED_ID
,EKPO.MANUAL_TC_REASON AS MANUAL_TAX_CODE_REASON_ID
,EKPO.FISCAL_INCENTIVE AS TAX_INCENTIVE_TYPE_ID
,EKPO.TAX_SUBJECT_ST AS TAX_SUBJECT_TO_SUBSTITUICAO_TRIBUTARIA
,EKPO.FISCAL_INCENTIVE_ID AS INCENTIVE_ID
,EKPO.SF_TXJCD AS ORIGIN_JURISD_CODE_ID
,EKPO._BEV1_NEGEN_ITEM AS BEV1_INDICATOR_ITEM_IS_GENERATED
,EKPO._BEV1_NEDEPFREE AS BEV1_DEPENDENT_ITEMS_FREE
,EKPO._BEV1_NESTRUCCAT AS BEV1_STRUCTURE_CATEGORY
,EKPO.ADVCODE AS ADVICE_CODE_ID
,EKPO.BUDGET_PD AS BUDGET_PERIOD_ID
,EKPO.EXCPE AS ACCEPTANCE_PERIOD
,EKPO.FMFGUS_KEY AS US_GOVERNMENT_FIELDS
,EKPO.IUID_RELEVANT AS IUID_RELEVANT
,EKPO.MRPIND AS MAX_RETAIL_PRICE_RELEVANT
,EKPO.OIPIPEVAL AS VAL_IND_PIPELINE
,EKPO.OIC_LIFNR AS OIC_LIFNR
,EKPO.OIC_DCITYC AS DESTINATION_CITY_CODE_ID
,EKPO.OIC_DCOUNC AS DESTINATION_COUNTY_CODE_ID
,EKPO.OIC_DREGIO AS DESTINATION_REGION_ID
,EKPO.OIC_DLAND1 AS DESTINATION_COUNTRY_ID
,EKPO.OIC_OCITYC AS ORIGIN_CITY_CODE_ID
,EKPO.OIC_OCOUNC AS ORIGIN_COUNTY_CODE_ID
,EKPO.OIC_OREGIO AS ORIGIN_REGION_ID
,EKPO.OIC_OLAND1 AS ORIGIN_COUNTRY_ID
,EKPO.OIC_PORGIN AS TAX_ORIGIN
,EKPO.OIC_PDESTN AS TAX_DESTINATION
,EKPO.OIC_PTRIP AS PIPELINE_TRIP_NUMBER_EXTERNAL
,EKPO.OIC_PBATCH AS PIPE_EX_BATCH_NO
,EKPO.OIC_MOT AS MODE_TRANSPORT_ID
,EKPO.OIC_AORGIN AS ALTERNATE_ORIGIN
,EKPO.OIC_ADESTN AS ALTERNATE_DESTINATION
,EKPO.OIC_TRUCKN AS TRUCK_NUMBER
,EKPO.OIA_BASELO AS BASE_LOCATION
,EKPO.OITAXFROM AS TAX_KEY_FROM_ID
,EKPO.OIHANTYP AS HANDLING_TYPE_ID
,EKPO.OIPRICIE AS ED_PRICING_EXTERNAL
,EKPO.OITAXTO AS TAX_KEY_TO_ID
,EKPO.OITAXCON AS EXCISE_DUTY_TAX_VAL
,EKPO.OITAXGRP AS EXCISE_DUTY_GROUP_ID
,EKPO.OIOILCON AS OIL_CONTENT_PERC
,EKPO.OIINEX AS ED_PRICING_KEY_ID
,EKPO.OIEXGNUM AS EXCHANGE_AGREEMENT_NUMBER_ID
,EKPO.OIEXGTYP AS EXCHANGE_TYPE_ID
,EKPO.OIFEETOT AS FEE_TOTAL_VAL
,CASE WHEN EKPO.OIFEEDT IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIFEEDT, {{ date_formatstr() }} ) END AS FEE_PRICING_CONDITION_DATE
,EKPO.OINETCYC AS NETTING_CYCLE_ID
,EKPO.OIFERP AS FEE_REPRICING_INDICATOR
,EKPO.OIFEECH AS FEE_EDIT_CONTROL
,EKPO.OIA_IPMVAT AS VAT_ON_INT_MAT
,EKPO.OIA_SPLTIV AS SPLIT_INVOICE_VERIF
,EKPO.OIVATH AS LOCCUR_AMOUNT
,EKPO.OIVATF AS AMOUNT_DOCUMENT_CURRENCY_VAL
,EKPO.OISBREL AS S_B_PROD_RELEV_IND
,EKPO.OIBASPROD AS BASE_PRODUCT_NUMBER_ID
,EKPO.OITRKNR AS TRACKING_NUMBER
,EKPO.OITRKJR AS TRACKING_NUMBER_YEAR
,EKPO.OIEXTNR AS EXTERNAL_TRACKING_NUMBER
,EKPO.OIITMNR AS TRACKING_NUMBER_ITEM_LINE
,EKPO.OIFTIND AS FINAL_TRANSFER_INDICATOR
,EKPO.OIPRIOP AS PRICE_OPT_GAINS
,EKPO.OITRIND AS TRANSFER_SIGN
,EKPO.OIGHNDL AS GAIN_HANDLING
,EKPO.OIUMBAR AS VAL_TYPE_ISSUING_LOC_ID
,EKPO.OITXCON1 AS ED_TAX_1_VAL
,EKPO.OITXCON2 AS ED_TAX_2_VAL
,EKPO.OITXCON3 AS ED_TAX_3_VAL
,EKPO.OITXCON4 AS ED_TAX_4_VAL
,EKPO.OITXCON5 AS ED_TAX_5_VAL
,EKPO.OITXCON6 AS ED_TAX_6_VAL
,EKPO.OID_EXTBOL AS EXTERNAL_BILL_LADING
,EKPO.OID_MISCDL AS MISCELLANEOUS_DELIVERY_NUMBER
,EKPO.OIMATCYC AS MATERIAL_INV_CYCLE_ID
,EKPO.OIEDOK AS EXCISE_DUTY_VALIDATION_INDICATOR
,EKPO.OIEDBAL AS ED_BALANCE_INDICATOR
,EKPO.OIEDBALM AS BALANCE_METHOD_IND
,EKPO.OICERTF1 AS EXTERNAL_LICENSE_NO
,CASE WHEN EKPO.OIDATFM1 IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATFM1, {{ date_formatstr() }} ) END AS VALID_FROM_DATE
,CASE WHEN EKPO.OIDATTO1 IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATTO1, {{ date_formatstr() }} ) END AS VALID_TO_DATE
,EKPO.OIH_LICTP AS LICENSE_TYPE_ID
,EKPO.OIH_LICIN AS INTERNAL_LICENSE_NO_ID
,EKPO.OIH_LCFOL AS FOLLOW_ON_LICENSE_ID
,EKPO.OIH_FOLQTY AS "2ND_LICENSE_QTY"
,EKPO.OIEDOK_GI AS ED_VALIDATION
,EKPO.OIEDBAL_GI AS EXCISE_DUTY_BALANCE
,EKPO.OIEDBALM_GI AS BALANCE_METHOD
,EKPO.OIHANTYP_GI AS OIHANTYP_GI
,EKPO.OIINEX_GI AS OIINEX_GI
,EKPO.OITAXGRP_GI AS OITAXGRP_GI
,EKPO.OICERTF1_GI AS EXT_LICENSE_NO_GI
,CASE WHEN EKPO.OIDATFM1_GI IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATFM1_GI, {{ date_formatstr() }} ) END AS OIDATFM1_GI
,CASE WHEN EKPO.OIDATTO1_GI IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATTO1_GI, {{ date_formatstr() }} ) END AS OIDATTO1_GI
,EKPO.OIH_LICTP_GI AS LICENSE_TYPE_TO_MATERIAL_STO_ID
,EKPO.OIH_LICIN_GI AS INTER_LICENSE_NO_TO_ID
,EKPO.OIH_LCFOL_GI AS OIH_LCFOL_GI
,EKPO.OIH_FOLQTY_GI AS OIH_FOLQTY_GI
,EKPO.SGT_SCAT AS STOCK_SEGMENT
,EKPO.SGT_RCAT AS REQUIREMENT_SEGMENT
,EKPO.WRF_CHARSTC1 AS CHARACTERISTIC_VALUE_1
,EKPO.WRF_CHARSTC2 AS CHARACTERISTIC_VALUE_2
,EKPO.WRF_CHARSTC3 AS CHARACTERISTIC_VALUE_3
,EKPO.REFSITE AS REFERENCE_SITE_PURCHASING
,EKPO._ACCGO_IS_CO_REL AS ACCGO_CALL_OFF_APPLIES
,EKPO.SERRU AS TYPE_SUBCONTRACTING
,EKPO.SERNP AS SERIAL_NUMBER_PROFILE_ID
,EKPO.DISUB_SOBKZ AS SPECIAL_STOCK
,EKPO.DISUB_PSPNR AS WBS_ELEMENT_ID
,EKPO.DISUB_KUNNR AS DISUB_KUNNR
,EKPO.DISUB_VBELN AS SALES_DOCUMENT_ID
,EKPO.DISUB_POSNR AS SD_ITEM_ID
,EKPO.DISUB_OWNER AS OWNER_STOCK_ID
,EKPO.FSH_SEASON_YEAR AS FSH_SEASON_YEAR
,EKPO.FSH_SEASON AS SEASON_ID
,EKPO.FSH_COLLECTION AS FASHION_COLLECTION
,EKPO.FSH_THEME AS FASHION_THEME
,CASE WHEN EKPO.FSH_ATP_DATE IN ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.FSH_ATP_DATE, {{ date_formatstr() }} ) END AS STARTING_WITH_ATP_DATE
,EKPO.FSH_VAS_REL AS VAS_RELEVANT
,EKPO.FSH_VAS_PRNT_ID AS FSH_VAS_PRNT_ID
,EKPO.FSH_TRANSACTION AS TRANSACTION_NUMBER
,EKPO.FSH_ITEM_GROUP AS ITEM_GROUP
,EKPO.FSH_ITEM AS ITEM_NUMBER
,EKPO.FSH_SS AS ORDER_SCHEDULING_STRATEGY
,EKPO.FSH_GRID_COND_REC AS GRID_CONDITION_NUMBER
,EKPO.FSH_PSM_PFM_SPLIT AS PSM_AND_PFM_SPLIT_ID
,EKPO.CNFM_QTY AS COMMITTED_QUANTITY
,EKPO.REF_ITEM AS REFERENCE_ITEM_ID
,EKPO.SOURCE_ID AS ORIGIN_PROFILE_ID
,EKPO.SOURCE_KEY AS KEY_IN_SOURCE_SYSTEM
,EKPO.PUT_BACK AS PUT_BACK_INDICATOR
,EKPO.POL_ID AS ORDER_LIST_ITEM_NUMBER
,EKPO.CONS_ORDER AS PURCHASE_ORDER_CONSIGNMENT
,EKPO._FIVETRAN_DELETED AS _FIVETRAN_DELETED
,EKPO._FIVETRAN_SYNCED AS _FIVETRAN_SYNCED
,EKPO._FIVETRAN_SAP_ARCHIVED AS _FIVETRAN_SAP_ARCHIVED
from {{source('dhsaphana_sapabap1', 'ekpo')}}
where
EKPO.MANDT in ('800')