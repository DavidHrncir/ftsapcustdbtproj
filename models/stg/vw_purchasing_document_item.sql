Select
EKPO.MANDT as Client_Id
,EKPO.EBELN as Purchasing_Document_Id
,EKPO.EBELP as Purchasing_Document_Item_Id
,EKPO.LOEKZ as Deletion_Indicator
,EKPO.STATU as Rfq_Status
,CASE when EKPO.AEDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.AEDAT, {{ date_formatstr() }} ) END as Last_Changed_On_Date
,EKPO.TXZ01 as Short_Text
,EKPO.MATNR as Material_Id
,EKPO.EMATN as Material_Number_Id
,EKPO.BUKRS as Company_Code_Id
,EKPO.WERKS as Plant_Id
,EKPO.LGORT as Storage_Location_Id
,EKPO.BEDNR as Requirement_Tracking_Number
,EKPO.MATKL as Material_Group_Id
,EKPO.INFNR as Number_Purchasing_Info_Id
,EKPO.IDNLF as Material_Number_Used_By_Vendor
,EKPO.KTMNG as Target_Quantity
,EKPO.MENGE as Purchase_Order_Quantity
,EKPO.MEINS as Order_Uom_Id
,EKPO.BPRME as Order_Price_Purchasing_Uom_Id
,EKPO.BPUMZ as Quantity_Conversion
,EKPO.BPUMN as BPUMN
,EKPO.UMREZ as Equal_To
,EKPO.UMREN as Denominator
,EKPO.NETPR as Net_Order_Price_Val
,EKPO.PEINH as Price_Unit
,EKPO.NETWR as Net_Order_Po_Currency_Val
,EKPO.BRTWR as Gross_Order_Po_Currency_Val
,CASE when EKPO.AGDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.AGDAT, {{ date_formatstr() }} ) END as Quotation_Deadline_Date
,EKPO.WEBAZ as Gr_Processing_Time
,EKPO.MWSKZ as Tax_Code_Id
,EKPO.BONUS as Settlement_Group_1_Purchasing
,EKPO.INSMK as Stock_Type
,EKPO.SPINF as Indicator_Update_Info
,EKPO.PRSDR as Price_Printout
,EKPO.SCHPR as Indicator_Estimated_Price
,EKPO.MAHNZ as Number_Reminders_Expediters
,EKPO.MAHN1 as 1St_Reminder_Exped
,EKPO.MAHN2 as 2Nd_Reminder_Exped
,EKPO.MAHN3 as 3Rd_Reminder_Exped
,EKPO.UEBTO as Overdelivery_Tolerance_Limit
,EKPO.UEBTK as Unltd_Overdelivery
,EKPO.UNTTO as Underdelivery_Tolerance_Limit
,EKPO.BWTAR as Valuation_Type_Id
,EKPO.BWTTY as Valuation_Category_Id
,EKPO.ABSKZ as Rejection_Indicator
,EKPO.AGMEM as Internal_Comment_On_Quotation_Id
,EKPO.ELIKZ as Delivery_Completed
,EKPO.EREKZ as Final_Invoice_Indicator
,EKPO.PSTYP as Item_Category_Id
,EKPO.KNTTP as Account_Assignment_Category_Id
,EKPO.KZVBR as Consumption_Posting
,EKPO.VRTKZ as Distribut_Indicator
,EKPO.TWRKZ as Partial_Invoice_Indicator
,EKPO.WEPOS as Goods_Receipt_Indicator
,EKPO.WEUNB as Goods_Receipt_Non_Valuated
,EKPO.REPOS as Invoice_Receipt_Indicator
,EKPO.WEBRE as Gr_Based_Inv_Verif
,EKPO.KZABS as Order_Acknowledgment_Requirement
,EKPO.LABNR as Order_Acknowledgment_Number
,EKPO.KONNR as Outline_Agreement_Id
,EKPO.KTPNR as Princ_Agreement_Item_Id
,CASE when EKPO.ABDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.ABDAT, {{ date_formatstr() }} ) END as Reconciliation_Date
,EKPO.ABFTZ as Agreed_Cumulative_Quantity
,EKPO.ETFZ1 as Firm_Zone
,EKPO.ETFZ2 as Trade_Off_Zone
,EKPO.KZSTU as Binding_On_Mrp
,EKPO.NOTKZ as Exclusion_Indicator
,EKPO.LMEIN as Base_Uom_Id
,EKPO.EVERS as Shipping_Instruction_Id
,EKPO.ZWERT as Oa_Target_Val
,EKPO.NAVNW as Non_Deductible_Put_Tax_Val
,EKPO.ABMNG as Standard_Release_Order_Quantity
,CASE when EKPO.PRDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.PRDAT, {{ date_formatstr() }} ) END as Price_Determination_Date
,EKPO.BSTYP as Purch_Doc_Category
,EKPO.EFFWR as Effective_Item_Val
,EKPO.XOBLR as Item_Affects_Commitments
,EKPO.KUNNR as Customer_Id
,EKPO.ADRNR as Address_Id
,EKPO.EKKOL as Condition_Group_With_Vendor
,EKPO.SKTOF as No_Cash_Discount
,EKPO.STAFO as Update_Group_Stats_Id
,EKPO.PLIFZ as Planned_Delivery_Time_In_Days
,EKPO.NTGEW as Net_Weight
,EKPO.GEWEI as Weight_Uom_Id
,EKPO.TXJCD as Tax_Jurisdiction_Id
,EKPO.ETDRK as Print_Relevant
,EKPO.SOBKZ as Special_Stock_Id
,EKPO.ARSNR as Settlement_Reservation_Number
,EKPO.ARSPS as Item_Settlem_Reser
,EKPO.INSNC as Not_Changeable
,EKPO.SSQSS as Qm_Control_Key_Id
,EKPO.ZGTYP as Certificate_Type_Id
,EKPO.EAN11 as Ean
,EKPO.BSTAE as Confirmation_Control_Key_Id
,EKPO.REVLV as Revision_Level
,EKPO.GEBER as Fund_Id
,EKPO.FISTL as Funds_Center_Id
,EKPO.FIPOS as Commitment_Item_Id
,EKPO.KO_GSBER as Bus_Area_Reported_To_Partner_Id
,EKPO.KO_PARGB as Partners_Assumed_Bus_Area_Id
,EKPO.KO_PRCTR as Profit_Center_Id
,EKPO.KO_PPRCTR as Partner_Profit_Center_Id
,EKPO.MEPRF as Pricing_Date_Control
,EKPO.BRGEW as Gross_Weight
,EKPO.VOLUM as Volume
,EKPO.VOLEH as Volume_Uom_Id
,EKPO.INCO1 as Incoterms_Id
,EKPO.INCO2 as Incoterms_Part_2
,EKPO.VORAB as Advance_Procurement
,EKPO.KOLIF as Prior_Vendor_Id
,EKPO.LTSNR as Vendor_Subrange_Id
,EKPO.PACKNO as Package_Number_Id
,EKPO.FPLNR as Invoicing_Plan_Number
,EKPO.GNETWR as Currently_Not_Used_Val
,EKPO.STAPO as Item_Is_Statistical
,EKPO.UEBPO as Higher_Level_Item_Id
,CASE when EKPO.LEWED in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.LEWED, {{ date_formatstr() }} ) END as Latest_Possible_Goods_Receipt_Date
,EKPO.EMLIF as Vendor_Id
,EKPO.LBLKZ as Subcontracting_Vendor
,EKPO.SATNR as Cross_Plant_Cm_Id
,EKPO.ATTYP as Material_Category
,EKPO.VSART as Shipping_Type_Id
,EKPO.HANDOVERLOC as Handover_Location
,EKPO.KANBA as Kanban_Indicator
,EKPO.ADRN2 as Number_Delivery_Address_Id
,EKPO.CUOBJ as Internal_Object_No
,EKPO.XERSY as Eval_Receipt_Sett
,CASE when EKPO.EILDT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.EILDT, {{ date_formatstr() }} ) END as Gr_B_Settlement_From_Date
,CASE when EKPO.DRDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.DRDAT, {{ date_formatstr() }} ) END as Last_Transmission_Date
,EKPO.DRUHR as Tim
,EKPO.DRUNR as Sequential_Number
,EKPO.AKTNR as Promotion_Id
,EKPO.ABELN as Allocation_Table_Number_Id
,EKPO.ABELP as Item_Number_Allocation_Table_Id
,EKPO.ANZPU as Number_Points
,EKPO.PUNEI as Points_Uom_Id
,EKPO.SAISO as Season_Category_Id
,EKPO.SAISJ as Season_Year
,EKPO.EBON2 as Settlement_Group_2
,EKPO.EBON3 as Settlement_Group_3
,EKPO.EBONF as Subseq_Settlement
,EKPO.MLMAA as Mat_Ledger_Active
,EKPO.MHDRZ as Minimum_Remaining_Shelf_Life
,EKPO.ANFNR as Rfq_Number_Id
,EKPO.ANFPS as Item_Number_Rfq_Id
,EKPO.KZKFG as Origin_Configuration
,EKPO.USEQU as Quota_Arrangement_Usage_Id
,EKPO.UMSOK as Sp_Ind_Stock_Tfr_Id
,EKPO.BANFN as Purchase_Requisition_Number
,EKPO.BNFPO as Item_Requisition_Id
,EKPO.MTART as Material_Type_Id
,EKPO.UPTYP as Subitem_Category_Id
,EKPO.UPVOR as Subitems_Exist
,EKPO.KZWI1 as Subtotal_1_Val
,EKPO.KZWI2 as Subtotal_2_Val
,EKPO.KZWI3 as Subtotal_3_Val
,EKPO.KZWI4 as Subtotal_4_Val
,EKPO.KZWI5 as Subtotal_5_Val
,EKPO.KZWI6 as Subtotal_6_Val
,EKPO.SIKGR as Processing_Key_Sub_Items_Id
,EKPO.MFZHI as Maximum_Cmg_Quantity
,EKPO.FFZHI as Maximum_Cum_Pgq
,EKPO.RETPO as Returns_Item
,EKPO.AUREL as Relevant_To_Allocation_Table
,EKPO.BSGRU as Reason_Ordering_Id
,EKPO.LFRET as Del_Type_F_Returns_Id
,EKPO.MFRGR as Material_Freight_Group_Id
,EKPO.NRFHG as Qual_F_Freegoodsdis
,EKPO.J_1BNBM as Brazilian_Ncm_Code_Id
,EKPO.J_1BMATUSE as Usage_The_Material
,EKPO.J_1BMATORG as Origin_The_Material
,EKPO.J_1BOWNPRO as Produced_In_House
,EKPO.J_1BINDUST as Material_Cfop_Category
,EKPO.ABUEB as Release_Creation_Profile_Id
,CASE when EKPO.NLABD in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.NLABD, {{ date_formatstr() }} ) END as Next_Forecast_Delivery_Schedule_Transm_Date
,CASE when EKPO.NFABD in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.NFABD, {{ date_formatstr() }} ) END as Next_Jit_Delivery_Schedule_Transmission_Date
,EKPO.KZBWS as Special_Stock_Valuation
,EKPO.BONBA as Rebate_Basis_1_Val
,EKPO.FABKZ as Jit_Sched_Indicator
,EKPO.J_1AINDXP as Inflation_Index_Id
,CASE when EKPO.J_1AIDATEP in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.J_1AIDATEP, {{ date_formatstr() }} ) END as Inflation_Index_Date
,EKPO.MPROF as Mfr_Part_Profile_Id
,EKPO.EGLKZ as Final_Delivery
,EKPO.KZTLF as Partial_Deliv_Item
,EKPO.KZFME as Units_Measure_Usage
,EKPO.RDPRF as Rounding_Profile_Id
,EKPO.TECHS as Standard_Variant
,EKPO.CHG_SRV as Configuration_Changed
,EKPO.CHG_FPLNR as Chg_Fplnr
,EKPO.MFRPN as Manufacturer_Part_Number
,EKPO.MFRNR as Manufacturer_Number_Id
,EKPO.EMNFR as Ext_Manufacturer
,EKPO.NOVET as Item_Blocked_Sd_Delivery
,EKPO.AFNAM as Name_Requisitioner_Requester
,EKPO.TZONRC as Time_Zone_Recipient_Location_Id
,EKPO.IPRKZ as Period_Ind_Sled
,EKPO.LEBRE as Service_Based_Invoice_Verification
,EKPO.BERID as Mrp_Area_Id
,EKPO.XCONDITIONS as Xconditions
,EKPO.APOMS as Apo_As_Planning_System
,EKPO.CCOMP as Stock_Transfer_Cat
,EKPO.GRANT_NBR as Grant
,EKPO.FKBER as Functional_Area_Id
,EKPO.STATUS as Item_Status
,EKPO.RESLO as Issuing_Storage_Loc_Id
,EKPO.KBLNR as Earmarked_Funds_Id
,EKPO.KBLPOS as Earmarked_Funds_Document_Item_Id
,EKPO.WEORA as Acceptance_At_Origin
,EKPO.SRV_BAS_COM as Service_Based_Commitment
,EKPO.PRIO_URG as Requirement_Urgency_Id
,EKPO.PRIO_REQ as Requirement_Priority_Id
,EKPO.EMPST as Receiving_Point
,EKPO.DIFF_INVOICE as Differential_Invoicing
,EKPO.TRMRISK_RELEVANT as Risk_Relevancy_In_Purchasing
,EKPO.SPE_ABGRU as Reason_Rejection
,EKPO.SPE_CRM_SO as Crm_Sales_Order_Number_Tpop_Process
,EKPO.SPE_CRM_SO_ITEM as Crm_Sales_Order_Item_Number_In_Tpop_Proc
,EKPO.SPE_CRM_REF_SO as Crm_Ref_Order_Number_Tpop_Process
,EKPO.SPE_CRM_REF_ITEM as Crm_Reference_Item_Number_In_Tpop_Proc
,EKPO.SPE_CRM_FKREL as Billing_Relevance_Crm
,EKPO.SPE_CHNG_SYS as Last_Changers_System_Type
,EKPO.SPE_INSMK_SRC as Source_Stor_Loc_Stock_Type
,EKPO.SPE_CQ_CTRLTYPE as Cq_Control_Type
,EKPO.SPE_CQ_NOCQ as No_Transmission_Cqs_In_Sa_Release
,EKPO.REASON_CODE as Goods_Receipt_Reason_Code
,EKPO.CQU_SAR as Cumulative_Grs_From_Redirected_Pos
,EKPO.ANZSN as Number_Serial_Numbers
,EKPO.SPE_EWM_DTC as Ewm_Del_Tol_Chk
,EKPO.EXLIN as Item_Number_Length
,EKPO.EXSNR as External_Sorting
,EKPO.EHTYP as External_Hierarchy_Category_Id
,EKPO.RETPC as Retention_In_Percent
,EKPO.DPTYP as Down_Payment_Indicator
,EKPO.DPPCT as Down_Payment_Percentage
,EKPO.DPAMT as Down_Payment_Amount_Val
,CASE when EKPO.DPDAT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.DPDAT, {{ date_formatstr() }} ) END as Due_Down_Payment_Date
,EKPO.FLS_RSTO as Enh_Store_Return
,EKPO.EXT_RFX_NUMBER as Document_No_External_Doc
,EKPO.EXT_RFX_ITEM as Item_Number_External_Document
,EKPO.EXT_RFX_SYSTEM as Logical_System_Id
,EKPO.SRM_CONTRACT_ID as Central_Contract
,EKPO.SRM_CONTRACT_ITM as Central_Contract_Item_Number
,EKPO.BLK_REASON_ID as Blocking_Reason_Id
,EKPO.BLK_REASON_TXT as Blocking_Reason_Text
,EKPO.ITCONS as Real_Time_Cons_Post
,EKPO.FIXMG as Delivery_Date_And_Quantity_Fixed
,EKPO.WABWE as Gi_Based_Goods_Rcpt
,EKPO.CMPL_DLV_ITM as Complete_Delivery
,EKPO.INCO2_L as Incoterms_Location_1
,EKPO.INCO3_L as Incoterms_Location_2
,EKPO.TC_AUT_DET as Tax_Code_Automatically_Determined_Id
,EKPO.MANUAL_TC_REASON as Manual_Tax_Code_Reason_Id
,EKPO.FISCAL_INCENTIVE as Tax_Incentive_Type_Id
,EKPO.TAX_SUBJECT_ST as Tax_Subject_To_Substituicao_Tributaria
,EKPO.FISCAL_INCENTIVE_ID as Incentive_Id
,EKPO.SF_TXJCD as Origin_Jurisd_Code_Id
,EKPO._BEV1_NEGEN_ITEM as Bev1_Indicator_Item_Is_Generated
,EKPO._BEV1_NEDEPFREE as Bev1_Dependent_Items_Free
,EKPO._BEV1_NESTRUCCAT as Bev1_Structure_Category
,EKPO.ADVCODE as Advice_Code_Id
,EKPO.BUDGET_PD as Budget_Period_Id
,EKPO.EXCPE as Acceptance_Period
,EKPO.FMFGUS_KEY as Us_Government_Fields
,EKPO.IUID_RELEVANT as Iuid_Relevant
,EKPO.MRPIND as Max_Retail_Price_Relevant
,EKPO.OIPIPEVAL as Val_Ind_Pipeline
,EKPO.OIC_LIFNR as OIC_LIFNR
,EKPO.OIC_DCITYC as Destination_City_Code_Id
,EKPO.OIC_DCOUNC as Destination_County_Code_Id
,EKPO.OIC_DREGIO as Destination_Region_Id
,EKPO.OIC_DLAND1 as Destination_Country_Id
,EKPO.OIC_OCITYC as Origin_City_Code_Id
,EKPO.OIC_OCOUNC as Origin_County_Code_Id
,EKPO.OIC_OREGIO as Origin_Region_Id
,EKPO.OIC_OLAND1 as Origin_Country_Id
,EKPO.OIC_PORGIN as Tax_Origin
,EKPO.OIC_PDESTN as Tax_Destination
,EKPO.OIC_PTRIP as Pipeline_Trip_Number_External
,EKPO.OIC_PBATCH as Pipe_Ex_Batch_No
,EKPO.OIC_MOT as Mode_Transport_Id
,EKPO.OIC_AORGIN as Alternate_Origin
,EKPO.OIC_ADESTN as Alternate_Destination
,EKPO.OIC_TRUCKN as Truck_Number
,EKPO.OIA_BASELO as Base_Location
,EKPO.OITAXFROM as Tax_Key_From_Id
,EKPO.OIHANTYP as Handling_Type_Id
,EKPO.OIPRICIE as Ed_Pricing_External
,EKPO.OITAXTO as Tax_Key_To_Id
,EKPO.OITAXCON as Excise_Duty_Tax_Val
,EKPO.OITAXGRP as Excise_Duty_Group_Id
,EKPO.OIOILCON as Oil_Content_Perc
,EKPO.OIINEX as Ed_Pricing_Key_Id
,EKPO.OIEXGNUM as Exchange_Agreement_Number_Id
,EKPO.OIEXGTYP as Exchange_Type_Id
,EKPO.OIFEETOT as Fee_Total_Val
,CASE when EKPO.OIFEEDT in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIFEEDT, {{ date_formatstr() }} ) END as Fee_Pricing_Condition_Date
,EKPO.OINETCYC as Netting_Cycle_Id
,EKPO.OIFERP as Fee_Repricing_Indicator
,EKPO.OIFEECH as Fee_Edit_Control
,EKPO.OIA_IPMVAT as Vat_On_Int_Mat
,EKPO.OIA_SPLTIV as Split_Invoice_Verif
,EKPO.OIVATH as Loccur_Amount
,EKPO.OIVATF as Amount_Document_Currency_Val
,EKPO.OISBREL as S_B_Prod_Relev_Ind
,EKPO.OIBASPROD as Base_Product_Number_Id
,EKPO.OITRKNR as Tracking_Number
,EKPO.OITRKJR as Tracking_Number_Year
,EKPO.OIEXTNR as External_Tracking_Number
,EKPO.OIITMNR as Tracking_Number_Item_Line
,EKPO.OIFTIND as Final_Transfer_Indicator
,EKPO.OIPRIOP as Price_Opt_Gains
,EKPO.OITRIND as Transfer_Sign
,EKPO.OIGHNDL as Gain_Handling
,EKPO.OIUMBAR as Val_Type_Issuing_Loc_Id
,EKPO.OITXCON1 as Ed_Tax_1_Val
,EKPO.OITXCON2 as Ed_Tax_2_Val
,EKPO.OITXCON3 as Ed_Tax_3_Val
,EKPO.OITXCON4 as Ed_Tax_4_Val
,EKPO.OITXCON5 as Ed_Tax_5_Val
,EKPO.OITXCON6 as Ed_Tax_6_Val
,EKPO.OID_EXTBOL as External_Bill_Lading
,EKPO.OID_MISCDL as Miscellaneous_Delivery_Number
,EKPO.OIMATCYC as Material_Inv_Cycle_Id
,EKPO.OIEDOK as Excise_Duty_Validation_Indicator
,EKPO.OIEDBAL as Ed_Balance_Indicator
,EKPO.OIEDBALM as Balance_Method_Ind
,EKPO.OICERTF1 as External_License_No
,CASE when EKPO.OIDATFM1 in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATFM1, {{ date_formatstr() }} ) END as Valid_From_Date
,CASE when EKPO.OIDATTO1 in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATTO1, {{ date_formatstr() }} ) END as Valid_To_Date
,EKPO.OIH_LICTP as License_Type_Id
,EKPO.OIH_LICIN as Internal_License_No_Id
,EKPO.OIH_LCFOL as Follow_On_License_Id
,EKPO.OIH_FOLQTY as 2Nd_License_Qty
,EKPO.OIEDOK_GI as Ed_Validation
,EKPO.OIEDBAL_GI as Excise_Duty_Balance
,EKPO.OIEDBALM_GI as Balance_Method
,EKPO.OIHANTYP_GI as OIHANTYP_GI
,EKPO.OIINEX_GI as OIINEX_GI
,EKPO.OITAXGRP_GI as OITAXGRP_GI
,EKPO.OICERTF1_GI as Ext_License_No_Gi
,CASE when EKPO.OIDATFM1_GI in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATFM1_GI, {{ date_formatstr() }} ) END as OIDATFM1_GI
,CASE when EKPO.OIDATTO1_GI in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.OIDATTO1_GI, {{ date_formatstr() }} ) END as OIDATTO1_GI
,EKPO.OIH_LICTP_GI as License_Type_To_Material_Sto_Id
,EKPO.OIH_LICIN_GI as Inter_License_No_To_Id
,EKPO.OIH_LCFOL_GI as OIH_LCFOL_GI
,EKPO.OIH_FOLQTY_GI as OIH_FOLQTY_GI
,EKPO.SGT_SCAT as Stock_Segment
,EKPO.SGT_RCAT as Requirement_Segment
,EKPO.WRF_CHARSTC1 as Characteristic_Value_1
,EKPO.WRF_CHARSTC2 as Characteristic_Value_2
,EKPO.WRF_CHARSTC3 as Characteristic_Value_3
,EKPO.REFSITE as Reference_Site_Purchasing
,EKPO._ACCGO_IS_CO_REL as Accgo_Call_Off_Applies
,EKPO.SERRU as Type_Subcontracting
,EKPO.SERNP as Serial_Number_Profile_Id
,EKPO.DISUB_SOBKZ as Special_Stock
,EKPO.DISUB_PSPNR as Wbs_Element_Id
,EKPO.DISUB_KUNNR as DISUB_KUNNR
,EKPO.DISUB_VBELN as Sales_Document_Id
,EKPO.DISUB_POSNR as Sd_Item_Id
,EKPO.DISUB_OWNER as Owner_Stock_Id
,EKPO.FSH_SEASON_YEAR as FSH_SEASON_YEAR
,EKPO.FSH_SEASON as Season_Id
,EKPO.FSH_COLLECTION as Fashion_Collection
,EKPO.FSH_THEME as Fashion_Theme
,CASE when EKPO.FSH_ATP_DATE in ('00000000', ' ') THEN NULL ELSE TO_DATE(EKPO.FSH_ATP_DATE, {{ date_formatstr() }} ) END as Starting_With_Atp_Date
,EKPO.FSH_VAS_REL as Vas_Relevant
,EKPO.FSH_VAS_PRNT_ID as FSH_VAS_PRNT_ID
,EKPO.FSH_TRANSACTION as Transaction_Number
,EKPO.FSH_ITEM_GROUP as Item_Group
,EKPO.FSH_ITEM as Item_Number
,EKPO.FSH_SS as Order_Scheduling_Strategy
,EKPO.FSH_GRID_COND_REC as Grid_Condition_Number
,EKPO.FSH_PSM_PFM_SPLIT as Psm_And_Pfm_Split_Id
,EKPO.CNFM_QTY as Committed_Quantity
,EKPO.REF_ITEM as Reference_Item_Id
,EKPO.SOURCE_ID as Origin_Profile_Id
,EKPO.SOURCE_KEY as Key_In_Source_System
,EKPO.PUT_BACK as Put_Back_Indicator
,EKPO.POL_ID as Order_List_Item_Number
,EKPO.CONS_ORDER as Purchase_Order_Consignment
,EKPO._FIVETRAN_DELETED as _Fivetran_Deleted
,EKPO._FIVETRAN_SYNCED as _Fivetran_Synced
,EKPO._FIVETRAN_SAP_ARCHIVED as _Fivetran_Sap_Archived
from {{source('dhsaphana_sapabap1', 'ekpo')}}
where
EKPO.MANDT in ('800')