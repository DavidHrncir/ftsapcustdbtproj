Select
VBUK.MANDT as Client_Id
,VBUK.VBELN as Sales_Document_Id
,VBUK.RFSTK as Reference_Document_Header_Status
,VBUK.RFGSK as Total_Reference_Stat
,VBUK.BESTK as Confirmation_Status
,VBUK.LFSTK as Delivery_Status
,VBUK.LFGSK as Overall_Dlv_Status
,VBUK.WBSTK as Total_Goods_Movement_Status
,VBUK.FKSTK as Billing_Status
,VBUK.FKSAK as Bill_Stat_Order_Rel
,VBUK.BUCHK as Posting_Status
,VBUK.ABSTK as Rejection_Status
,VBUK.GBSTK as Overall_Status
,VBUK.KOSTK as Overall_Picking_Putaway_Status
,VBUK.LVSTK as Overall_Wm_Status
,VBUK.UVALS as Item
,VBUK.UVVLS as Item_Delivery
,VBUK.UVFAS as Item_Billing
,VBUK.UVALL as Header
,VBUK.UVVLK as Header_Delivery
,VBUK.UVFAK as Header_Billing
,VBUK.UVPRS as Pricing
,VBUK.VBTYP as Sd_Document_Category
,VBUK.VBOBJ as Sd_Document_Object
,{{ date_case_gen('VBUK.AEDAT','Changed_Date')}}
,VBUK.FKIVK as Totals_Status
,VBUK.RELIK as Inv_List_Status
,VBUK.UVK01 as Header_Reserves_1
,VBUK.UVK02 as Header_Reserves_2
,VBUK.UVK03 as Header_Reserves_3
,VBUK.UVK04 as Header_Reserves_4
,VBUK.UVK05 as Header_Reserves_5
,VBUK.UVS01 as Total_Reserves_1
,VBUK.UVS02 as Total_Reserves_2
,VBUK.UVS03 as Total_Reserves_3
,VBUK.UVS04 as Total_Reserves_4
,VBUK.UVS05 as Total_Reserves_5
,VBUK.PKSTK as Packing_Status
,VBUK.CMPSA as Static_Check
,VBUK.CMPSB as Dynamic_Check
,VBUK.CMPSC as Maximum_Value
,VBUK.CMPSD as Terms_Payment
,VBUK.CMPSE as Customer_Review_Date
,VBUK.CMPSF as Overdue_Open_Items
,VBUK.CMPSG as Oldest_Open_Items
,VBUK.CMPSH as Max_Dunning_Level
,VBUK.CMPSI as Financial_Document
,VBUK.CMPSJ as Expt_Cred_Insurance
,VBUK.CMPSK as Payment_Card
,VBUK.CMPSL as Reserve
,VBUK.CMPS0 as CMPS0
,VBUK.CMPS1 as CMPS1
,VBUK.CMPS2 as CMPS2
,VBUK.CMGST as Overall_Status_Credit_Checks
,VBUK.TRSTA as Transportation_Planning_Status
,VBUK.KOQUK as Status_Pick_Confirmation
,VBUK.COSTA as Confirmation_Status_Ale
,VBUK.SAPRL as Sap_Release
,VBUK.UVPAS as It_Packaging
,VBUK.UVPIS as It_Picking_Putaway
,VBUK.UVWAS as Item_Goods_Mvmt
,VBUK.UVPAK as Head_Packaging
,VBUK.UVPIK as Head_Picking_Putaway
,VBUK.UVWAK as Head_Goods_Mvmt
,VBUK.UVGEK as Unused
,VBUK.CMPSM as Credit_Check_Is_Obsolete
,VBUK.DCSTK as Delay_Status
,VBUK.VESTK as Handling_Unit_Placed_In_Stock
,VBUK.VLSTK as Status_Decent_Whse
,VBUK.RRSTA as Revenue_Determination_Status
,VBUK.BLOCK as Block
,VBUK.FSSTK as Overall_Billing_Block_Status
,VBUK.LSSTK as Overall_Delivery_Block_Status
,VBUK.SPSTG as Overall_Blocked_Status
,VBUK.PDSTK as Pod_Status_On_Header_Level
,VBUK.FMSTK as Status_Funds_Management
,VBUK.MANEK as Manual_Completion_Contract
,VBUK.SPE_TMPID as Temporary_Inbound_Delivery
,VBUK.HDALL as On_Hold
,VBUK.HDALS as Pos_Hold
,VBUK.CMPS_CM as Sap_Credit_Management
,VBUK.CMPS_TE as Credit_Mgmt_Te_Status
,VBUK.VBTYP_EXT as Doc_Cat_Extension
,VBUK.FSH_AR_STAT_HDR as Arun_Status_At_Header
,VBUK._FIVETRAN_DELETED as _Fivetran_Deleted
,VBUK._FIVETRAN_SYNCED as _Fivetran_Synced
,VBUK._FIVETRAN_SAP_ARCHIVED as _Fivetran_Sap_Archived
from {{source('dhsaphana_sapabap1', 'vbuk')}}
where
VBUK.MANDT in ('800')