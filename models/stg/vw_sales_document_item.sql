Select
VBAP.MANDT AS CLIENT_ID
,VBAP.POSNR AS SALES_DOCUMENT_ITEM_ID
,VBAP.VBELN AS SALES_DOCUMENT_ID
,VBAP.SMENG AS SCALE_QUANTITY
,VBAP.STLTY AS BOM_CATEGORY
,VBAP.VGREF AS PRECEDING_DOCUMENT_RESULTED_FROM_REF
,VBAP.BWTAR AS VALUATION_TYPE_ID
,VBAP.KNUMA_AG AS SALES_DEAL_ID
,VBAP.SPART AS DIVISION_ID
,VBAP.BWTEX AS INDICATOR_SEPARATE_VALUATION
,VBAP.OIH_LICIN AS INTERNAL_LICENSE_NO_ID
,VBAP.OIC_DCOUNC AS DESTINATION_COUNTY_CODE_ID
,VBAP.KNUMA_PI AS PROMOTION_ID
,VBAP.OIC_DCITYC AS DESTINATION_CITY_CODE_ID
,VBAP.TAS AS TREASURY_ACCOUNT_SYMBOL
,VBAP.OIGNRULE AS GROSS_NET_PRICING_RULE_ID
,VBAP.UPMAT AS MNITM_PRCREFMATL_ID
,VBAP.KALSM_K AS COSTING_SHEET_ID
,VBAP.OICERTF1_EX AS EXTERNAL_LICENSE_NO
,VBAP.APLZL_OLC AS COUNTER
,VBAP.UMVKN AS DENOMINATOR
,VBAP.OIDMSG_QTY AS QUANTITY_MESSAGE
,VBAP.KEVER AS DEVIATION_DAYS
,VBAP.MTVFP AS AVAILABILITY_CHECK_ID
,VBAP.OIHANTYP_EX AS HANDLING_TYPE_ID
,VBAP.ABGRU AS REASON_REJECTION_ID
,VBAP.XCHAR AS BATCH_MANAGEMENT
,VBAP.KOSTL AS COST_CENTER_ID
,VBAP._ACCGO_TX_P AS _ACCGO_TX_P
,VBAP.PRS_WORK_PERIOD AS WORK_PERIOD
,VBAP.VKGRU AS REPAIR_CLASSIFICATION_ITEMS_ID
,VBAP.WKTNR AS VALUE_CONTRACT_NO_ID
,VBAP.ABSFZ AS ABSOLUTE_DEVIATION
,VBAP.OIH_LCFOL AS FOLLOW_ON_LICENSE_ID
,VBAP.VBEAF AS FIXED_PROCESS_TIME
,VBAP.ERNAM AS CREATED_BY
,VBAP.OITAXFROM_IM AS TAX_KEY_FROM_ID
,VBAP.STAFO AS UPDATE_GROUP_STATS_ID
,VBAP.OIC_LIFNR AS VENDOR_ID
,VBAP.J_1BTXSDC AS SD_TAX_CODE_ID
,VBAP.TAXM1 AS TAX_CLASSIFICATION_ID
,VBAP.LPRIO AS DELIVERY_PRIORITY_ID
,VBAP.OIEDBALM_EX AS BALANCE_METHOD_IND
,VBAP.UMZIZ AS CONVERSION_FACTOR
,VBAP.KZVBR AS CONSUMPTION_POSTING
,VBAP.OIC_AORGIN AS ALTERNATE_ORIGIN
,VBAP._SLCE_INST_GUID AS _SLCE_INST_GUID
,VBAP.CHARG AS BATCH_ID
,VBAP.STLKN AS BOM_ITEM_NODE_NUMBER
,VBAP.FSH_COLLECTION AS FASHION_COLLECTION_ID
,VBAP.CMETH AS QUANTITY_CONVERSION_METHOD
,VBAP.APLZL_OAA AS APLZL_OAA
,VBAP.OIDMSG_DAT AS VALIDITY_DATE_MSG
,VBAP.UMVKZ AS NUMERATOR
,VBAP.OITAXGRP_EX AS EXCISE_DUTY_GROUP_ID
,VBAP.FSH_CANDATE AS CANCELLATION_DATE
,VBAP.OIPRICIE_IM AS ED_PRICING_EXTERNAL
,VBAP._SLCE_SOL_POSNR AS _SLCE_SOL_POSNR
,VBAP.TAX_SUBJECT_ST AS TAX_SUBJECT_TO_SUBSTITUICAO_TRIBUTARIA
,VBAP.GEWEI AS WEIGHT_UOM_ID
,VBAP.REVACC_REFID AS REVENUE_ACCOUNTING_REFERENCE_ID
,VBAP.OIC_PORGIN AS TAX_ORIGIN
,VBAP.SOBKZ AS SPECIAL_STOCK_ID
,VBAP.VPWRK AS PLANNING_PLANT_ID
,VBAP.WAERK AS SD_DOCUMENT_CURRENCY_ID
,VBAP.MOD_ALLOW AS MODIFICATION_ALLOWED
,VBAP.UMZIN AS UMZIN
,VBAP.MAGRV AS MATL_GRP_PACK_MATLS_ID
,VBAP.OIC_PBATCH AS PIPE_EX_BATCH_NO
,VBAP.BONUS AS VOLUME_REBATE_GROUP_ID
,VBAP.SLOCTYPE AS LOCATION_TYPE
,VBAP.OIEDBAL_IM AS ED_BALANCE_INDICATOR
,VBAP.FSH_VAS_PRNT_ID AS SD_ITEM_ID
,VBAP.ABLFZ AS ROUNDING_QUANTITY_DELIVERY
,VBAP.TAXM3 AS TAXM3
,VBAP.PSTYV AS SALES_DOCUMENT_ITEM_CATEGORY_ID
,VBAP._XLSO_COURSE_EDA AS _XLSO_COURSE_EDA
,VBAP.FISCAL_INCENTIVE AS TAX_INCENTIVE_TYPE_ID
,VBAP.OIC_MOT AS MODE_TRANSPORT_ID
,VBAP.OIC_OREGIO AS ORIGIN_REGION_ID
,VBAP.FISTL AS FUNDS_CENTER_ID
,VBAP.VPMAT AS PLANNING_MATERIAL_ID
,VBAP.AWAHR AS ORDER_PROBABILITY_THE_ITEM
,VBAP.KPEIN AS CONDITION_PRICING_UNIT
,VBAP.VOLEH AS VOLUME_UOM_ID
,VBAP.WERKS AS PLANT_OWN_OR_EXTERNAL_ID
,VBAP.OICERTF1 AS OICERTF1
,VBAP.KNUMH AS NO_COND_REC_BATCH
,VBAP.TAXM2 AS TAXM2
,VBAP.FSH_PSM_PFM_SPLIT AS PSM_AND_PFM_SPLIT_ID
,VBAP.TC_AUT_DET AS TAX_CODE_AUTOMATICALLY_DETERMINED_ID
,VBAP.SERAIL AS SERIAL_NUMBER_PROFILE_ID
,VBAP.KOSCH AS PRODUCT_ALLOCATION_ID
,VBAP.OID_MISCDL AS MISCELLANEOUS_DELIVERY_NUMBER
,VBAP.OIH_LICTP_EX AS LICENSE_TYPE_ID
,VBAP.PAOBJNR AS PROFITABILITY_SEGMENT_NO
,VBAP.PS_PSP_PNR AS WBS_ELEMENT_ID
,VBAP.RKFKF AS BILLING_METH_CO_PPC
,VBAP.SKTOF AS CASH_DISCOUNT_INDICATOR
,VBAP.FKREL AS RELEVANT_BILLING
,VBAP.OIHANTYP AS OIHANTYP
,VBAP._SLCE_SOL_MATNR AS _SLCE_SOL_MATNR
,VBAP.OIPLANTD AS IS_OIL_PLANT_DETERM
,VBAP.LSTANR AS FREE_GOODS_DELIVERY_CONTROL
,VBAP._DATAAGING AS FILTER_VALUE_AGING_DATE
,VBAP.CPD_UPDAT AS TIME_STAMP
,VBAP.OIC_DRCREG AS DRC_REGION_ID
,VBAP.BEDAE AS REQUIREMENTS_TYPE_ID
,VBAP.MANUAL_TC_REASON AS MANUAL_TAX_CODE_REASON_ID
,VBAP.SPCSTO AS NF_CFOP_SPECIAL_CASE_ID
,VBAP.AEDAT AS CHANGED_DATE
,VBAP.Z_PRS_OFFSHORE AS ON_NEAR_OFFSHORE_DELIVERY_TYPE
,VBAP.KZWI1 AS SUBTOTAL_1_VAL
,VBAP.OIEDOK AS EXCISE_DUTY_VALIDATION_INDICATOR
,VBAP.FSH_PQR_UEPOS AS HIGHER_LEV_ITEM_PARTIAL_QUANTITY_REJ_ID
,VBAP.HANDOVERTIME AS HANDOVER_TIM
,VBAP.XCHPF AS XCHPF
,VBAP.OIBWTAR_IM AS OIBWTAR_IM
,VBAP.SHKZG AS RETURNS_ITEM
,VBAP._SLCE_SOL_CUOBJ AS _SLCE_SOL_CUOBJ
,VBAP.AUFPL_OLC AS OPERATION_TASK_LIST_NO
,VBAP.NTGEW AS NET_WEIGHT_THE_ITEM
,VBAP.VGTYP AS PRECEDING_DOC_CATEG
,VBAP.STOCKLOC AS LOCATION
,VBAP.PMATN AS PRICING_REFERENCE_MATERIAL_ID
,VBAP.SERNR AS BOM_EXPLOSION_NUMBER_ID
,VBAP.TAXM4 AS TAXM4
,VBAP.KALNR AS COST_ESTIMATE_NUMBER_ID
,VBAP.OIEXGNUM AS EXCHANGE_AGREEMENT_NUMBER_ID
,VBAP.ERLRE AS COMPLETION_RULE
,VBAP.OIEXGTYP AS EXCHANGE_TYPE_ID
,VBAP.OITAXTO_IM AS TAX_KEY_TO_ID
,VBAP.KZBWS AS SPECIAL_STOCK_VALUATION
,VBAP._ACCGO_IS_CO_REL AS _ACCGO_IS_CO_REL
,VBAP.PARGB AS TRADING_PARTBA_ID
,VBAP.OIMETIND AS METROPOLITAN_INDICATOR_ID
,VBAP.OIH_FOLQTY AS SECOND_LICENSE_QTY
,VBAP.OIC_TRUCKN AS TRUCK_NUMBER
,VBAP.UEBTK AS UNLIMITED_OVERDELIVERY_ALLOWED
,VBAP.ARSNUM AS RESERVATION_ID
,VBAP.KDMAT AS MATERIAL_NUMBER_USED_BY_CUSTOMER
,VBAP.BPN AS BUSINESS_PARTNER_NUMBER_ID
,VBAP.MVGR1 AS MATERIAL_GROUP_1_ID
,VBAP.VOREF AS COMPLETE_REFERENCE_INDICATOR
,VBAP.ERZET AS CREATED_TIM
,VBAP.ARKTX AS SHORT_TEXT_SALES_ORDER_ITEM
,VBAP.CMPNT AS CREDIT_FUNCT_ACTIVE
,VBAP.OIHNOTLGORT AS STORAGE_LOC_ID
,VBAP.UEPOS AS HIGHER_LEVEL_ITEM_ID
,VBAP.STDAT AS KEY_THE_BILL_MATERIAL_DATE
,VBAP.STCUR AS EXCHANGE_RATE_STATS
,VBAP.OITAXFROM_EX AS OITAXFROM_EX
,VBAP.FISCAL_INCENTIVE_ID AS INCENTIVE_ID
,VBAP._SLCE_SINGLE_CONF_DONE AS _SLCE_SINGLE_CONF_DONE
,VBAP.KLMENG AS CUMUL_CONFIRMED_QTY
,VBAP.ZMENG AS TARGET_QUANTITY_IN_SALES_UNITS
,VBAP.OIDRC AS DIFFER_REFER_CODE_ID
,VBAP.PAY_METHOD AS PAYMENT_METHODS
,VBAP._SLCE_SOL_EXT_GUID AS _SLCE_SOL_EXT_GUID
,VBAP.KZWI2 AS SUBTOTAL_2_VAL
,VBAP.OIBYPASS AS IS_OIL_PLT_DET_IND
,VBAP.FSH_ITEM_GROUP AS ITEM_GROUP
,VBAP.AUFPL_OAA AS AUFPL_OAA
,VBAP.KWMENG AS ORDER_QUANTITY
,VBAP.OIH_LCFOL_EX AS OIH_LCFOL_EX
,VBAP.KOUPD AS CONDITION_UPDATE
,VBAP.FSH_GRID_COND_REC AS GRID_CONDITION_NUMBER
,VBAP.TECHS AS STANDARD_VARIANT
,VBAP.MATNR AS MATERIAL_ID
,VBAP.WGRU1 AS MATERIAL_GROUP_HIERARCHY_1
,VBAP.OITAXFROM AS OITAXFROM
,VBAP.TAXM5 AS TAXM5
,VBAP.KZTLF AS PARTIAL_DELIVERY_AT_ITEM_LEVEL
,VBAP.IUID_RELEVANT AS IUID_RELEVANT_CUSTOMER
,VBAP.OIC_KMPOS AS REF_CONTRACT_ITEM
,VBAP.Z_PRS_COUNTRY AS COUNTRY_KEY_ID
,VBAP.GSBER AS BUSINESS_AREA_ID
,VBAP.OIPRICIE_EX AS OIPRICIE_EX
,VBAP.FSH_CRSD AS CONDITION_NO
,VBAP.FSH_TRANSACTION AS TRANSACTION_NUMBER
,VBAP.GRKOR AS DELIVERY_GROUP
,VBAP.UEPVW AS ID_HIGHER_LEVEL_ITEM_USAGE
,VBAP.MFRGR AS MATERIAL_FREIGHT_GROUP_ID
,VBAP.VBELV AS ORIGINATING_DOCUMENT_ID
,VBAP.UNTTO AS UNDERDELIVERY_TOLERANCE_LIMIT
,VBAP.PLAVO AS PLANDELSCHEDINSTRUCT_ID
,VBAP.VPZUO AS ALLOCATION_INDICATOR
,VBAP.MVGR3 AS MATERIAL_GROUP_3_ID
,VBAP.SUGRD AS REASON_MATERIAL_SUBSTITUTION_ID
,VBAP.OIC_PTRIP AS PIPELINE_TRIP_NUMBER_EXTERNAL
,VBAP.OIC_ADESTN AS ALTERNATE_DESTINATION
,VBAP.OIC_OLAND1 AS ORIGIN_COUNTRY_ID
,VBAP.MVGR2 AS MATERIAL_GROUP_2_ID
,VBAP.NETPR AS NET_PRICE_VAL
,VBAP.OICONTNR AS OUTLINE_AGREEMENT_CONTRACT_ID
,VBAP.STMAN AS INCONSISTENT_CONFIGURATION
,VBAP.OIEDBAL_EX AS OIEDBAL_EX
,VBAP.J_1BTAXLW3 AS ISS_TAX_LAW_ID
,VBAP._SLCE_SINGLE_CONF_REQIRED AS _SLCE_SINGLE_CONF_REQIRED
,VBAP.OINETCYC AS NETTING_CYCLE_ID
,VBAP.PRSOK AS PRICING_IS_OK
,VBAP.VGPOS AS REFERENCE_ITEM_ID
,VBAP.CUOBJ_CH AS INTERNAL_OBJECT_NO
,VBAP.OIC_PDESTN AS TAX_DESTINATION
,VBAP.REP_FREQ AS REPORTING_FREQUENCY
,VBAP.LSMENG AS REQUIRED_DELIV_QTY
,VBAP.STPOZ AS STPOZ
,VBAP.KZWI3 AS SUBTOTAL_3_VAL
,VBAP.POSAR AS ITEM_TYPE
,VBAP.BUDGET_PD AS BUDGET_PERIOD_ID
,VBAP.Z_PRS_CHARGELEVL AS STAFF_GRADE
,VBAP.POSNV AS ORIGINATING_ITEM_ID
,VBAP.WGRU2 AS MATERIAL_GROUP_HIERARCHY_2
,VBAP.OIFEETOT AS FEE_TOTAL_VAL
,VBAP.OIC_DREGIO AS DESTINATION_REGION_ID
,VBAP.OIH_LICIN_EX AS OIH_LICIN_EX
,VBAP.OIOILCON AS OIL_CONTENT_PERC
,VBAP.AUFNR AS ORDER_ID
,VBAP.SGT_RCAT AS REQUIREMENT_SEGMENT
,VBAP.OIDMSG_UOM AS UNIT_MEASURE_MSG
,VBAP.OIBASPROD AS BASE_PRODUCT_NUMBER_ID
,VBAP.MSR_REFUND_CODE AS RETURNS_REFUND_CODE_ID
,VBAP.CUOBJ AS CONFIGURATION
,VBAP.KBVER AS DEVIATION_IN_PERCENT
,VBAP.SPOSN AS BOM_ITEM_NUMBER
,VBAP.FSH_SEASON_YEAR AS SEASON_YEAR_ID
,VBAP.ZZDEA_LICENSE AS DEA_NUMBER
,VBAP.TAXM6 AS TAXM6
,VBAP.MPROK AS STATUS_MANUAL_PRICE_CHANGE
,VBAP.PROVG AS COMMISSION_GROUP_ID
,VBAP.OITAXTO AS OITAXTO
,VBAP.CMKUA AS CRED_EXCH_RATE
,VBAP.CMTFG AS PARTIAL_RELEASE
,VBAP.OID_EXTBOL AS EXTERNAL_BILL_LADING
,VBAP.UKONM AS MNITEM_MATPRICINGGRP_ID
,VBAP.MVGR4 AS MATERIAL_GROUP_4_ID
,VBAP.KMEIN AS CONDITION_UOM_ID
,VBAP.KLVAR AS COSTING_VARIANT_ID
,VBAP.PRS_SD_SPSNR AS STANDARD_WBS_ELEMENT_ID
,VBAP.MWSBP AS TAX_AMOUNT_DOCUMENT_CURRENCY_VAL
,VBAP.REVACC_REFTYPE AS REV_ACC_REFERENCE_TYPE
,VBAP.WRF_CHARSTC1 AS CHARACTERISTIC_VALUE_1
,VBAP.FSH_ITEM AS ITEM_NUMBER
,VBAP.SKOPF AS ASSORTMENT_MODULE_ID
,VBAP.OIBWTAR_EX AS OIBWTAR_EX
,VBAP.PRODH AS PRODUCT_HIERARCHY_ID
,VBAP.STKEY AS ORIGIN_THE_BILL_MATERIAL
,VBAP.J_1BTAXLW4 AS COFINS_TAX_LAW_ID
,VBAP.ROUTE AS ROUTE_ID
,VBAP._XLSO_COURSE_BDA AS _XLSO_COURSE_BDA
,VBAP.MATKL AS MATERIAL_GROUP_ID
,VBAP.OIC_DRCTRY AS DRC_COUNTRY_ID
,VBAP.KALVAR AS KALVAR
,VBAP.LFREL AS ITEM_IS_RELEVANT_DELIVERY
,VBAP.KMPMG AS COMPONENT_QUANTITY
,VBAP.KZWI4 AS SUBTOTAL_4_VAL
,VBAP.WTYSC_CLMITEM AS CLAIM_ITEM_NUMBER
,VBAP.FMENG AS QUANTITY_IS_FIXED
,VBAP.NRAB_KNUMH AS CONDITION_NUMBER
,VBAP.OITAXTO_EX AS OITAXTO_EX
,VBAP.CMPRE AS ITEM_CREDIT_PRICE_VAL
,VBAP.HANDOVERDATE AS HANDOVER_DATE
,VBAP.NACHL AS NO_GR_POSTED_BY_CST
,VBAP.ABDAT AS RECONCILIATION_DATE
,VBAP.KONDM AS MATERIAL_PRICING_GROUP_ID
,VBAP.OIC_DLAND1 AS DESTINATION_COUNTRY_ID
,VBAP.CMPRE_FLT AS ITEM_CREDIT_PRICE
,VBAP.TAXM7 AS TAXM7
,VBAP.FERC_IND AS REGULATORY_INDICATOR_ID
,VBAP.OIFEECH AS FEE_EDIT_CONTROL
,VBAP.OIH_FOLQTY_EX AS OIH_FOLQTY_EX
,VBAP.PRCTR AS PROFIT_CENTER_ID
,VBAP.EANNR AS EAN_NUMBER
,VBAP.ZSCHL_K AS OVERHEAD_KEY
,VBAP.OISLF AS STATE_LICENSE_FEE_ZONE_ID
,VBAP.PCTRF AS PROFIT_CENTER_BILLING_ID
,VBAP.FSH_VAS_REL AS VAS_RELEVANT
,VBAP.MVGR5 AS MATERIAL_GROUP_5_ID
,VBAP.FKBER AS FUNCTIONAL_AREA_ID
,VBAP.VBEAV AS VAR_PROCESSING_TIME
,VBAP.ZWERT AS OA_TARGET_VAL
,VBAP.ANTLF AS MAX_PART_DELIVERIES
,VBAP.CANCEL_ALLOW AS CANCELLATION_ALLOWED
,VBAP.FSH_SEAREF AS COPIED_SEASON
,VBAP.OIPRICIE AS OIPRICIE
,VBAP.WRF_CHARSTC2 AS CHARACTERISTIC_VALUE_2
,VBAP.UPFLU AS UPDATE_DOCUMENT_FLOW
,VBAP.OIHCOTDISCH AS IMP_POSTING_AT_POD
,VBAP.OIDMSG_SHP AS SHIP_TO_PARTY_MSG
,VBAP.GRANT_NBR AS GRANT_NBR
,VBAP.OIDMSG_TRM AS PAYMENT_TERMS_MSG
,VBAP.UMREF AS CONVERSION_FACTOR_QUANTITIES
,VBAP.KZWI6 AS SUBTOTAL_6_VAL
,VBAP.KNTTP AS ACCOUNT_ASSIGNMENT_CATEGORY_ID
,VBAP.J_1BTAXLW5 AS PIS_TAX_LAW_ID
,VBAP.STLNR AS BILL_MATERIAL
,VBAP.VKAUS AS USAGE_ID
,VBAP.ERDAT AS CREATED_DATE
,VBAP.KZWI5 AS SUBTOTAL_5_VAL
,VBAP.FSH_THEME AS FASHION_THEME_ID
,VBAP.FSH_SEASON AS SEASON_ID
,VBAP.ZIEME AS TARGET_QUANTITY_UOM_UOM_ID
,VBAP.OIPSDRC AS PRICING_DRC_ID
,VBAP.UEBTO AS OVERDELIVERY_TOLERANCE_LIMIT
,VBAP.GRPOS AS ALTERNATIVE_TO_ITEM
,VBAP.CHMVS AS QUANTITY_PROPOSAL
,VBAP.OIHANTYP_IM AS OIHANTYP_IM
,VBAP.ABGES AS GUARANTEED
,VBAP.OIHNOTWERKS AS CROSS_EXCISE_DUTY_PLANT_ID
,VBAP.Z_PRS_BILL_FLAG AS BILLABLE_NON_BILLABLE
,VBAP.ABGRS AS RESULTS_ANALYSIS_KEY_ID
,VBAP.TAXM8 AS TAXM8
,VBAP.OBJNR AS OBJECT_NUMBER_AT_ITEM_LEVEL_ID
,VBAP.VOLUM AS VOLUME_THE_ITEM
,VBAP.OIINEX_EX AS ED_PRICING_KEY_ID
,VBAP.J_1BTAXLW1 AS ICMS_LAW_ID
,VBAP.J_1BCFOP AS CFOP_CODE_AND_EXTENSION_ID
,VBAP.KOWRR AS STATISTICAL_VALUES
,VBAP.FIXMG AS DELIVERY_DATE_AND_QUANTITY_FIXED
,VBAP._XLSO_COURSE_ID AS _XLSO_COURSE_ID
,VBAP.FMFGUS_KEY AS US_GOVERNMENT_FIELDS
,VBAP.ATPKZ AS REPLACEMENT_PART
,VBAP.OIFEEDT AS FEE_PRICING_CONDITION_DATE
,VBAP.MEINS AS BASE_UOM_ID
,VBAP.OIINEX AS OIINEX
,VBAP.MSR_RET_REASON AS RETURN_REASON_ID
,VBAP.HANDOVERLOC AS HANDOVER_LOCATION
,VBAP.LFMNG AS MINIMUM_DELIVERY_QTY
,VBAP.KTGRM AS ACCT_ASSIGNMENT_GRP_ID
,VBAP.OIA_BASELO AS BASE_LOCATION
,VBAP.BETC AS BUSINESS_EVENT_TYPE_CODE
,VBAP.WRF_CHARSTC3 AS CHARACTERISTIC_VALUE_3
,VBAP.OIEDBALM_IM AS OIEDBALM_IM
,VBAP.OIHTAXRCP_EX AS TAX_RECIPIENT
,VBAP.OIC_OCOUNC AS ORIGIN_COUNTY_CODE_ID
,VBAP.EXART AS BUS_TRANSACTION_TYPE_ID
,VBAP.FSH_VASREF AS COPIED_VAS
,VBAP.OIWAP AS WIDE_AREA_PRICING_ZONE_ID
,VBAP.VGBEL AS REFERENCE_DOCUMENT_ID
,VBAP.KANNR AS KANBAN_SEQUENCE_NUMBER
,VBAP.SUMBD AS SUMMING_UP_REQUIREMENTS
,VBAP.OIDMSG_PRD AS PRODUCTS_MESSAGE
,VBAP.POSEX AS PURCHASE_ORDER_ITEM
,VBAP.OITAXGRP_IM AS OITAXGRP_IM
,VBAP.OIC_OCITYC AS ORIGIN_CITY_CODE_ID
,VBAP.OID_SHIP AS SHIP_TO_PARTY_ID
,VBAP.PROSA AS ID_MATERIAL_DETERMINATION
,VBAP.BERID AS MRP_AREA_ID
,VBAP.LOGSYS_EXT AS LOGICAL_SYSTEM_ID
,VBAP.OIPIPEVAL AS VAL_IND_PIPELINE
,VBAP.OITAXGRP AS OITAXGRP
,VBAP.VRKME AS SALES_UOM_ID
,VBAP.EAN11 AS EAN
,VBAP.TAXM9 AS TAXM9
,VBAP.KZFME AS LEADING_UOM
,VBAP.WKTPS AS VALUE_CONTRACT_ITEM_ID
,VBAP.J_1BTAXLW2 AS IPI_LAW_ID
,VBAP.OIEDBALM AS OIEDBALM
,VBAP.STPOS AS BILL_MATERIAL_ITEM_NUMBER
,VBAP.ANZSN AS NUMBER_SERIAL_NUMBERS
,VBAP.OISBREL AS S_B_PROD_RELEV_IND
,VBAP.OIH_LICTP AS OIH_LICTP
,VBAP.WAVWR AS COST_DOCUMENT_CURRENCY_VAL
,VBAP.ARSPOS AS ITEM_NO_RESERVATION
,VBAP._BEV1_SRFUND AS _BEV1_SRFUND
,VBAP.NETWR AS NET_VAL
,VBAP.PRS_OBJNR AS ENGAGEMENT_MGMT_OBJECT_NUMBER
,VBAP.KBMENG AS KBMENG
,VBAP.PREFE AS PREFERENCE_AUTH
,VBAP.PRBME AS PRODUCT_GROUP_UOM_ID
,VBAP.CLINT AS INTERNAL_CLASS_NUMBER_ID
,VBAP.ZZDEA_SCHEDULE AS DEA_SCHEDULE_KEY
,VBAP.OIEDBAL AS OIEDBAL
,VBAP.TRMRISK_RELEVANT AS RISK_RELEVANCY_IN_SALES
,VBAP.CHSPL AS BATCH_SPLIT_ALLOWED
,VBAP.MATWA AS MATERIAL_ENTERED_ID
,VBAP.FAKSP AS BILLING_BLOCK_ITEM_ID
,VBAP.FONDS AS FUND_ID
,VBAP.BRGEW AS GROSS_WEIGHT_THE_ITEM
,VBAP.ABFOR AS FORM_PAYMENT_GUARANTEE_ID
,VBAP.STADAT AS STATISTICS_DATE
,VBAP.VSTEL AS SHIPPING_POINT_ID
,VBAP.MILL_SE_GPOSN AS GLOBAL_ITEM_ID
,VBAP.LGORT AS STORAGE_LOCATION_ID
,VBAP.MSR_APPROV_BLOCK AS APPROVAL_BLOCK
,VBAP.CEPOK AS STATUS_EXPECTED_PRICE
,VBAP._FIVETRAN_DELETED AS _FIVETRAN_DELETED
,VBAP._FIVETRAN_SYNCED AS _FIVETRAN_SYNCED
from {{source('dhsaphana_sapabap1', 'vbap')}}
where
VBAP.MANDT in ('800')
