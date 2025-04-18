Select
T161.MANDT as Client_Id
,T161.BSTYP as Purch_Doc_Category_Id
,T161.BSART as Purchasing_Document_Type_Id
,T161.BSAKZ as Control_Indicator
,T161.PINCR as Item_Number_Interval
,T161.NUMKI as No_Range_Int_Assgt
,T161.NUMKE as No_Range_Ext_Assg
,T161.BREFN as Field_Selection_Key_Id
,T161.REFBA as Reference_Document_Type_Id
,T161.ABVOR as Stdrd_Rel_Order_Qty
,T161.STAFO as Update_Group_Stats_Id
,T161.UPINC as Subitem_Interval
,T161.STAKO as Time_Dep_Conditions
,T161.PARGR as Partner_Determination_Procedure_Id
,T161.NUMKA as Number_Range_Ale
,T161.HITYP as Vendor_Hierarchy_Cat_Id
,T161.LPHIS as Rel_Documentation
,T161.GSFRG as Overall_Release_Requisitions
,T161.VARIANTE as Layout
,T161.SHENQ as Shared_Lock_Only
,T161.KZALE as Distributed_Contract_Ale
,T161.ABGEBOT as Global_Perc_Bid
,T161.KORNR as Corr_Misc_Provis
,T161.UMLIF as Vendor
,T161.KOETT as Contract_With_Delivery_Schedule
,T161.AR_OBJECT as Document_Type_Id
,T161.KOAKO as Koako
,T161.OICSEGI as Qty_Sched_Permitted
,T161.OIRFQREQ as Precedence_F_Rfq_Req
,T161.WVVKZ as Further_Processing_Summar_Docs
,T161.XLOKZ as Cross_System_Transit
,T161.CP_AKTIVE as Commitment_Plan_Is_Active
,T161.CPTYPE as Category_Commitment_Plan
,T161.FLS_RSTO as Enh_Store_Return
,T161.MSR_ACTIVE as Adv_Returns_Active
,T161.RDP_PROFILE as Risk_Distribution_Plan_Profile_Id
,T161.NUMKC as Srm_Contract_Number_Range
,T161._SAPMP_CEACT as Sapmp_Fastentry_Chars_Is_Active
,T161._SAPMP_PDACT as Sapmp_Activate_Inheritance
,T161._SAPMP_PPROT as Sapmp_Inheritance_Log
,T161._SAPMP_PUSER as Sapmp_Inheritance_Overwrite_User_Values
,T161._SAPMP_PAUSW as Sapmp_Inheritance_Char_Selection_List
,T161._SAPMP_ATNAM as Sapmp_Characteristic_Name
,T161._SAPMP_GAUF as Sapmp_Global_Local_Group_May_Be_Undone
,T161.TOLSL as Tolerance_Key_Id
,T161.FSH_VAS_ACT as Vas_Active_Flag
,T161.FSH_VAS_KALSM as Determination_Procedure
,T161.FSH_VAS_DEL as Vas_Deletion_Criteria
,T161.FSH_VAS_DETDT as Date_Vas_Determination
,T161.FSH_EXCL_RETURN as Exclude_Return_Items
,T161.FSH_VAR_KALSM as Determination_Procedure_Id
,T161.FSH_DPR_DETPRO as FSH_DPR_DETPRO
,T161.FSH_PO_IDOC as Generic_Article_In_Po_Using_Idoc
,T161.MILL_OMKZ as Use_Ref_Characteristics
,T161.WRF_ENABLE_DATELINE as Enable_Dateline
,T161._FIVETRAN_DELETED as _Fivetran_Deleted
,T161._FIVETRAN_SYNCED as _Fivetran_Synced
, T161T.BATXT as Doc_Type_Descript
from {{source('dhsaphana_sapabap1', 't161')}}
Left Join {{source('dhsaphana_sapabap1', 't161t')}} on 
    T161.MANDT = T161T.MANDT
    AND T161.BSART = T161T.BSART
    AND T161.BSTYP = T161T.BSTYP
and T161T.SPRAS= 'E'
where
T161.MANDT in ('800')