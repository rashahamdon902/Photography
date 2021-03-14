prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2020.10.01'
,p_release=>'20.2.0.00.20'
,p_default_workspace_id=>41288019885784854896
,p_default_application_id=>92174
,p_default_id_offset=>0
,p_default_owner=>'WKSP_PHOTO'
);
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(41297939157107068752)
,p_name=>unistr('Submit Photo- \062A\062D\0645\064A\0644 \0635\0648\0631\0629')
,p_alias=>unistr('SUBMIT-PHOTO-\062A\062D\0645\064A\0644-\0635\0648\0631\0629')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Submit Photo- \062A\062D\0645\064A\0644 \0635\0648\0631\0629')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'R.N.HAMDOUN90@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210310090539'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41298704677974026208)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(41297853448727068646)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.component_end;
end;
/
