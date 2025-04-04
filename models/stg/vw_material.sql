Select
MARA.MANDT as Client_Id
,MARA.MATNR as Material_Id
,MARA.RETDELC as Return_Code_Id
,MARA._STTPEC_SYNCCHG as _Sttpec_Syncchg
,MARA.SGT_COVSA as Segmentation_Strategy_Id
,MARA._STTPEC_SYNCTIME as _Sttpec_Synctime
,MARA.SIZE2 as Second_Size
,MARA.BWSCL as Source_Supply_Id
,MARA.LIQDT as Deletion_Date
,MARA.COMPL as Material_Completion_Level_Id
,MARA.WHSTC as Warehouse_Storage_Condition_Id
,MARA.MAXC_TOL as Overcapacity_Toler
,MARA.ERGEW as Allowed_Packaging_Weight
,MARA._STTPEC_PRDCAT as _Sttpec_Prdcat
,MARA.KZWSM as Units_Measure_Usage
,MARA.COTYPE as Object_Type_Id
,MARA.BBTYP as Assortment_List_Type_Id
,MARA.LAEDA as Last_Change_Date
,MARA.ERSDA as Created_Date
,MARA.RDMHD as Rounding_Rule_Sled
,MARA.PICNUM as Supersession_Chain_Number
,MARA.HERKL as Country_Of_Origin_Id
,MARA._VSO_R_TOP_IND as _Vso_R_Top_Ind
,MARA.MAGRV as Matl_Grp_Pack_Matls_Id
,MARA.QGRP as Quality_Inspection_Group_Id
,MARA.FSH_SC_MID as Material_Conv_Id
,MARA.BEHVO as Container_Requirements_Id
,MARA.BRGEW as Gross_Weight
,MARA.MFRPN as Manufacturer_Part_Number
,MARA.COLOR_ATINN as Int_Char_Number_Id
,MARA.KUNNR as Competitor_Id
,MARA.QMPUR as Qm_In_Procurement_Is_Active
,MARA.IPMIPPRODUCT as Intellectual_Property
,MARA.FERTH as Production_Inspection_Memo
,MARA.VOLEH as Volume_Uom_Id
,MARA._VSO_R_NO_P_GVH as _Vso_R_No_P_Gvh
,MARA.MSTAV as X_Distr_Chain_Status_Id
,MARA.MTPOS_MARA as Item_Category_Group_Id
,MARA.KZUMW as Environmentally_Relevant
,MARA.KZGVH as Closed
,MARA.FREE_CHAR as Free_Charact_Value
,MARA.FIBER_PART1 as Percentage_Share_1
,MARA.EANNR as Ean_Number
,MARA.BRAND_ID as Brand_Id
,MARA.AESZN as Document_Change_No
,MARA.FIBER_PART2 as Percentage_Share_2
,MARA.IHIVI as Indicator_Highly_Viscous
,MARA.HUTYP_DFLT as Standard_Hu_Type_Id
,MARA.MBRSH as Industry_Sector_Id
,MARA.TEXTILE_COMP_IND as Textile_Composition_Maintenance_Active
,MARA.FIBER_PART3 as Percentage_Share_3
,MARA.DG_PACK_STATUS as Dangerous_Goods_Packaging_Status_Id
,MARA.FIBER_PART4 as Percentage_Share_4
,MARA._VSO_R_TILT_IND as _Vso_R_Tilt_Ind
,MARA.MCOND as Material_Condition_Management
,MARA._VSO_R_TOL_B_HT as _Vso_R_Tol_B_Ht
,MARA.FSH_MG_AT2 as Fashion_Information_Field_2
,MARA.FIBER_PART5 as Percentage_Share_5
,MARA.ADPROF as Adjustment_Profile_Id
,MARA.MSTDE as Valid_From_Date
,MARA.VOLTO as Excess_Volume_Tol
,MARA.GTIN_VARIANT as Global_Trade_Item_Number_Variant
,MARA.SAISJ as Season_Year
,MARA.ZEIAR as Document_Type
,MARA.PRDHA as Product_Hierarchy_Id
,MARA.MAXH as Max_Pack_Height
,MARA.INHAL as Net_Contents
,MARA.BWVOR as Procurement_Rule_Id
,MARA.GROES as Size_Dimensions
,MARA.BFLME as Logistical_Variants
,MARA.VOLUM as Volume
,MARA.SGT_STAT as Segmentation_Status
,MARA.CADKZ as Cad_Indicator
,MARA.QQTIME as Quarantine_Period
,MARA._VSO_R_PAL_OVR_W as _Vso_R_Pal_Ovr_W
,MARA.FIBER_CODE3 as Component_3_Id
,MARA.FIBER_CODE2 as Component_2_Id
,MARA.SPROF as Pricing_Profile_Variants
,MARA.FIBER_CODE4 as Component_4_Id
,MARA.CWQTOLGR as Cw_Tolerance_Group_Id
,MARA.KOSCH as Product_Allocation_Id
,MARA.FIBER_CODE5 as Component_5_Id
,MARA.XGCHP as Appr_Batch_Rec_Req
,MARA.LOGUNIT as Logistics_Uom_Id
,MARA.LVORM as Df_At_Client_Level
,MARA.HOEHE as Height
,MARA.ERGEI as Weight_Uom_Id
,MARA.BEGRU as Authorization_Group
,MARA.EKWSL as Purchasing_Value_Key_Id
,MARA.GDS_RELEVANT as Gds_Relevant
,MARA.TAKLV as Tax_Classification_Id
,MARA.DATAB as DATAB
,MARA.XCHPF as Batch_Management
,MARA.CARE_CODE as Care_Code
,MARA.MHDRZ as Minimum_Remaining_Shelf_Life
,MARA.OITRIND as Transfer_Sign
,MARA.OIHMTXGR as Material_Tax_Group_Id
,MARA.SAITY as Rollout_In_Season_Id
,MARA.IPRKZ as Period_Ind_Sled
,MARA._STTPEC_COUNTRY_REF as _Sttpec_Country_Ref
,MARA.NORMT as Industry_Std_Desc
,MARA.SERLV as Serialization_Level
,MARA.KZKUP as Co_Product
,MARA.MSTDV as MSTDV
,MARA.ATTYP as Material_Category
,MARA._DSD_SV_CNT_GRP as _Dsd_Sv_Cnt_Grp
,MARA.STFAK as Stacking_Factor
,MARA.TARE_VAR as Variable_Tare_Weight
,MARA.MFRNR as Manufacturer_Number_Id
,MARA.ALLOW_PMAT_IGNO as Variant_Price_Allowed
,MARA.IMATN as Fff_Class
,MARA.PROFL as Dg_Indicator_Profile_Id
,MARA.TRAGR as Transportation_Group_Id
,MARA.HUTYP as Handling_Unit_Type_Id
,MARA.MEINS as Base_Uom_Id
,MARA.BSTME as Order_Uom_Id
,MARA._VSO_R_STACK_NO as _Vso_R_Stack_No
,MARA.CWQPROC as Cw_Profile_Cw_Qty_Id
,MARA.PSM_CODE as Protected_Species_Management_Code_Id
,MARA.BLATT as Page_Number
,MARA._VSO_R_PAL_B_HT as _Vso_R_Pal_B_Ht
,MARA._BEV1_LULDEGRP as _Bev1_Luldegrp
,MARA._BEV1_LULEINH as _Bev1_Luleinh
,MARA.SIZE1 as Main_Size
,MARA.MAXC as Maximum_Capacity
,MARA.NTGEW as Net_Weight
,MARA.SAISO as Season_Category_Id
,MARA.COMMODITY as Physical_Commodity_Id
,MARA.PRZUS as Product_Composition
,MARA.COBJID as Object_Id
,MARA._VSO_R_KZGVH_IND as _Vso_R_Kzgvh_Ind
,MARA.ANP as Anp_Code_Id
,MARA.MPROF as Mfr_Part_Profile_Id
,MARA.FSH_MG_AT3 as Fashion_Information_Field_3
,MARA.SPART as Division_Id
,MARA.FSH_SEAIM as Season_Active_In_Inventory_Management
,MARA.FORMT as Page_Format_Production_Memo
,MARA.WHMATGR as Warehouse_Material_Group_Id
,MARA.SLED_BBD as Expiration_Date
,MARA.GENNR as Generic_Material_Id
,MARA.MAXL as Max_Pack_Length
,MARA.MATKL as Material_Group_Id
,MARA.NRFHG as Qual_F_Freegoodsdis
,MARA.SERIAL as Serial_Number_Profile_Id
,MARA.MATFI as Material_Is_Locked
,MARA.QQTIMEUOM as Time_Quarantine_Period_Uom_Id
,MARA.VPREH as Comparison_Price_Unit
,MARA.ZEIVR as Doc_Version
,MARA.BMATN as Int_Material_Number_Id
,MARA.SIZE1_ATINN as SIZE1_ATINN
,MARA.LOGLEV_RETO as Return_To_Logistics_Level_Id
,MARA.FUELG as Maximum_Level_By_Volume
,MARA.PILFERABLE as Pilferable
,MARA.KZREV as Revision_Level_Assgd
,MARA._STTPEC_SERTYPE as _Sttpec_Sertype
,MARA._VSO_R_PAL_IND as _Vso_R_Pal_Ind
,MARA.SGT_SCOPE as Segmentation_Strategy_Scope
,MARA.MAXDIM_UOM as Ment_Uom_Id
,MARA.NSNID as Nato_Item_Identification_Number
,MARA.ETIAR as Label_Type_Id
,MARA.FSH_MG_AT1 as Fashion_Information_Field_1
,MARA.ERVOL as Allowed_Packaging_Volume
,MARA.SATNR as Cross_Plant_Cm_Id
,MARA.SGT_CSGR as Segmentation_Structure_Id
,MARA.BLANZ as Number_Sheets
,MARA.MTART as Material_Type_Id
,MARA.ETIAG as Labeling_Matl_Grpg_Id
,MARA.FIBER_CODE1 as Component_1_Id
,MARA.MFRGR as Material_Freight_Group_Id
,MARA._VSO_R_STACK_IND as _Vso_R_Stack_Ind
,MARA.ZEINR as Document
,MARA.MEDIUM as Medium_Id
,MARA.CWQREL as Catch_Weight_Relevant
,MARA.MHDHB as Total_Shelf_Life
,MARA.VPSTA as Compl_Maint_Status
,MARA.WRKST as Basic_Material_Id
,MARA.AEKLK as Net_Change_Costing
,MARA.STOFF as Hazardous_Material_Number_Id
,MARA.PACKCODE as Packaging_Code_Id
,MARA.SGT_REL as Segmentation_Relevant
,MARA._VSO_R_BOT_IND as _Vso_R_Bot_Ind
,MARA.BREIT as Width
,MARA.ADSPC_SPC as Spare_Part_Class_Code
,MARA.SIZE2_ATINN as SIZE2_ATINN
,MARA.WEORA as Acceptance_At_Origin
,MARA.INHBR as Gross_Contents
,MARA.FSH_SEALV as Indicator_Use_Season
,MARA.KZEFF as Assign_Effect_Vals
,MARA.PLGTP as Price_Band_Category_Id
,MARA.PMATA as Pricing_Reference_Material_Id
,MARA.RBNRM as Catalog_Profile_Id
,MARA.MEABM as Dimension_Uom_Id
,MARA.CUOBF as Internal_Object_Number
,MARA._BEV1_NESTRUCCAT as _Bev1_Nestruccat
,MARA.INHME as Content_Uom_Id
,MARA.KZNFM as Follow_Up_Material
,MARA.HAZMAT as Rel_Hs
,MARA.MLGUT as Empties_Bill_Material
,MARA.WESCH as Number_Gr_Slips
,MARA._VSO_R_PAL_MIN_H as _Vso_R_Pal_Min_H
,MARA.OIGROUPNAM as Td_Product_Group_Id
,MARA.MAXB as Max_Pack_Width
,MARA.BISMT as Old_Material_Number
,MARA.DISST as Low_Level_Code
,MARA._STTPEC_SYNCACT as _Sttpec_Syncact
,MARA.BSTAT as Creation_Status_Id
,MARA.ANIMAL_ORIGIN as Cont_Non_Textile_Parts_Animal_Origin
,MARA.ETIFO as Label_Form_Id
,MARA.KZKFG as Configurable_Material
,MARA._DSD_SL_TOLTYP as _Dsd_Sl_Toltyp
,MARA.FASHGRD as Fashion_Grade_Id
,MARA.CMETH as Quantity_Conversion_Method
,MARA.RMATP as Reference_Matl_Packing_Id
,MARA.VHART as Packaging_Material_Type_Id
,MARA.MHDLP as Storage_Percentage
,MARA.ERVOE as ERVOE
,MARA.TEMPB as Temperature_Conditions_Indicator_Id
,MARA.EAN11 as Ean
,MARA._ACCGO_ASSGD_UOM as _Accgo_Assgd_Uom
,MARA._VSO_R_QUAN_UNIT as _Vso_R_Quan_Unit
,MARA.ERNAM as Created_By
,MARA.GEWTO as Excess_Wt_Tolerance
,MARA.NUMTP as Ean_Category_Id
,MARA.LABOR as Laboratory_Design_Office_Id
,MARA.ILOOS as Indicator_In_Bulk_Liquid
,MARA.CMREL as Relevant_Cm
,MARA._DSD_VC_GROUP as _Dsd_Vc_Group
,MARA.RAUBE as Storage_Conditions_Id
,MARA.EXTWG as External_Material_Group_Id
,MARA.VABME as Variable_Purchase_Order_Unit
,MARA.LAENG as Length
,MARA.HNDLCODE as Handling_Indicator_Id
,MARA._VSO_R_PAL_OVR_D as _Vso_R_Pal_Ovr_D
,MARA.PS_SMARTFORM as Form_Name_Id
,MARA.ENTAR as Deactivated_Id
,MARA.PSTAT as Maintenance_Status
,MARA.COLOR as Color
,MARA.GEWEI as GEWEI
,MARA.AENAM as Changed_By
,MARA.MSTAE as Cross_Plant_Material_Status_Id
,MARA.ZEIFO as Page_Format
,MARA._FIVETRAN_DELETED as _Fivetran_Deleted
,MARA._FIVETRAN_SYNCED as _Fivetran_Synced
, MAKT.MAKTX as Material_Description
from {{source('dhsaphana_sapabap1', 'mara')}}
Left Join {{source('dhsaphana_sapabap1', 'makt')}}  on 
    MARA.MANDT = MAKT.MANDT
    AND MARA.MATNR = MAKT.MATNR
and MAKT.SPRAS= 'E'
where
MARA.MANDT in ('800')