prompt --application/pages/page_10011
begin
--   Manifest
--     PAGE: 10011
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
 p_id=>10011
,p_user_interface_id=>wwv_flow_api.id(41297939157107068752)
,p_name=>'Feedback Submitted'
,p_alias=>'FEEDBACK-SUBMITTED'
,p_page_mode=>'MODAL'
,p_step_title=>'Feedback'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(41297943017953068764)
,p_required_patch=>wwv_flow_api.id(41297940862188068759)
,p_protection_level=>'C'
,p_last_updated_by=>'R.N.HAMDOUN90@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210310082328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41297951985651068781)
,p_plug_name=>'Feedback Submitted'
,p_icon_css_classes=>'fa-check-circle'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--success'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(41297821110591068615)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41297951859010068781)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41297951985651068781)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(41297915972481068717)
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_css_classes=>'w40p'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(41297952032851068781)
,p_name=>'Close Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(41297951859010068781)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(41297961854288068796)
,p_event_id=>wwv_flow_api.id(41297952032851068781)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.component_end;
end;
/
