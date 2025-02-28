Select
T001.BUKRS as Company_Code_Id
,T001.MANDT as Client_Id
,T001.DKWEG as Import_Gr
,T001.XGJRV as Indicator_Propose_Fiscal_Year
,T001.XEINK as Purchase_Acct_Proc
,T001.FDBUK as Cash_Management_Company_Code_Id
,T001.PP_PDATE as Posting_Date_Parking
,T001.XPROD as Company_Code_Is_Productive
,T001.XSKFN as Discount_Base_Is_Net_Value
,T001.XCOVR as Indicator_Hedge_Request_Active
,T001.EBUKR as Original_Key_The_Company_Code
,T001.BUKRS_GLOB as Name_Global_Company_Code_Id
,T001.XMWSN as Tax_Base_Is_Net_Value
,T001.BUTXT as Company_Code_Txt
,T001.BAPOVAR as Ba_Variant_Id
,T001.XBBKO as Contract
,T001.DTTDSP as Remittance_Challan_Document_Type_Id
,T001.DTAXR as Deferred_Tax_Rule_Id
,T001.IMPDA as Import_In_Po
,T001.KKBER as Credit_Control_Area_Id
,T001.XFMCA as Update_Fm
,T001.XFMCB as Csh_Bdgt_Mgt_Active
,T001.SURCCM as Surcharge_Calculation_Method
,T001.FSTVARE as Field_Status_Variant_Id
,T001.PERIV as Fiscal_Year_Variant_Id
,T001.TXJCD as Jurisdiction_Code_Id
,T001.FMHRDATE as Fds_Ctr_Active_In_Hr_Date
,T001.XBBBA as Purchase_Requisition
,T001.ORT01 as City
,T001.RCOMP as Company_Id
,T001.XSPLT as Enable_Amount_Split
,T001.KOPIM as Copying_Control_Gr
,T001.INFMT as Inflation_Method_Id
,T001.FM_DERIVE_ACC as Activate_Aa_Derivation
,T001.KTOPL as Chart_Of_Accounts_Id
,T001.UMKRS as Sales_Purchases_Tax_Group_Id
,T001.XKKBI as Control_Area_Can_Be_Input
,T001.PST_PER_VAR as Manage_Posting_Period_Cocode_Ledger
,T001.XVATDATE as Tax_Reporting_Date_Active
,T001.TXKRS as Cur_Transl_Tax
,T001.WAERS as Currency_Id
,T001.XKDFT as Post_Translation
,T001.XCOS as Cost_Sales_Accounting_Status
,T001.XBBBF as Inventory_Management
,T001.XBBSC as Shopping_Cart
,T001.XFMCO as Project_Cash_Mgmt_Active
,T001.DTTAXC as Document_Type_Jv_Tax_Code_Id
,T001.MREGL as Sample_Acct_Rules_Var_Id
,T001.MWSKV as Input_Tax_Code_Id
,T001.XSTDT as Tax_Determ_With_Doc_Date
,T001.XNEGP as Negative_Postings_Permitted
,T001.SPRAS as Language_Key_Id
,T001.XVVWA as Financial_Assets_Mgmt_Active
,T001.DTPROV as Document_Type_Provisions_Taxes_Id
,T001.WAABW as Max_Exchange_Rate_Deviation
,T001.WT_NEWWT as Extended_Withholding_Tax_Active
,T001.XCESSION as Accts_Recble_Pled_Active
,T001.XSLTA as No_Forex_Rate_Diff_When_Clearing_In_Lc
,T001.ADRNR as Address_Id
,T001.XJVAA as Indicator_Jva_Active
,T001.OPVAR as Posting_Period_Variant_Id
,T001.MWSKA as Output_Tax_Code_Id
,T001.KOKFI as Allocation_Indicator
,T001.KTOP2 as Country_Chart_Accts_Id
,T001.XEXTB as External_Co_Code
,T001.BUVAR as Company_Code_Variant_Screen
,T001.OFFSACCT as Method_Offsttng_Acct
,T001.DTAMTC as Document_Type_Jv_Amount_Correction_Id
,T001.WFVAR as Workflow_Variant_Id
,T001.LAND1 as Country_Key_Id
,T001.FSTVA as FSTVA
,T001.XFDIS as Cash_Management_Activated
,T001.XBBBE as Po_Scheduling_Agmt
,T001.XVALV as Define_Default_Value_Date
,T001.FIKRS as Financial_Management_Area_Id
,T001.XFDSD as Update_Sd_In_Cmf
,T001.XFDMM as Update_Mm_In_Cmf
,T001.XGSBE as Business_Area_Fin_Statements
,T001.STCEG as Vat_Registration_No
,T001._FIVETRAN_DELETED as _Fivetran_Deleted
,T001._FIVETRAN_SYNCED as _Fivetran_Synced
from {{source('dhsaphana_sapabap1', 't001')}}
where
T001.MANDT in ('800')