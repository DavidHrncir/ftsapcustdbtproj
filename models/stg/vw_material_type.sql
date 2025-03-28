Select
T134.MANDT as Client_Id
,T134.MTART as Material_Type_Id
,T134.MTREF as Reference_Material_Type
,T134.MBREF as Sref_Material_Type
,T134.FLREF as Field_Reference_Id
,T134.NUMKI as Number_Range
,T134.NUMKE as NUMKE
,T134.ENVOP as External_No_Assignment_W_O_Check
,T134.BSEXT as External_Purchase_Orders_Allowed
,T134.BSINT as Internal_Purchase_Orders_Allowed
,T134.PSTAT as Maintenance_Status
,T134.KKREF as Account_Category_Reference_Id
,T134.VPRSV as Price_Control
,T134.KZVPR as Price_Control_Mandatory
,T134.VMTPO as Item_Category_Group_Id
,T134.EKALR as With_Qty_Structure
,T134.KZGRP as Grouping_Indicator
,T134.KZKFG as Configurable_Material
,T134.BEGRU as Authorization_Group_Id
,T134.KZPRC as Material_F_Process
,T134.KZPIP as Pipeline_Handling_Mandatory
,T134.PRDRU as Print_Price
,T134.ARANZ as Display_Material
,T134.WMAKG as WMAKG
,T134.IZUST as Initial_Status_New_Batch
,T134.ARDEL as Time_Till_Deleted
,T134.KZMPN as Manufacturer_Part
,T134.MSTAE as Cross_Plant_Material_Status_Id
,T134.CCHIS as History_Reqmt
,T134.CTYPE as Class_Type_Id
,T134.CLASS as Class_Number
,T134.CHNEU as Create_New_Batch
,T134.VTYPE as Version_Category_Id
,T134.VNUMKI as VNUMKI
,T134.VNUMKE as VNUMKE
,T134.KZRAC as Mand_Rp_Logistics
,T134._FIVETRAN_DELETED as _Fivetran_Deleted
,T134._FIVETRAN_SYNCED as _Fivetran_Synced
, T134T.MTBEZ as Description_Material_Type
from {{source('dhsaphana_sapabap1', 't134')}}
Left Join {{source('dhsaphana_sapabap1', 't134t')}} on 
    T134.MANDT = T134T.MANDT
    AND T134.MTART = T134T.MTART
and T134T.SPRAS= 'E'
where
T134.MANDT in ('800')