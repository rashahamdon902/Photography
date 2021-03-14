prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(41297939157107068752)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Photo Competition'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style>',
'    #BANNER{',
'        background: url(#APP_IMAGES#Banner.jpg);',
'          background-repeat: no-repeat;',
'          background-attachment: fixed;',
'          background-size: 100% 18%;',
'    }',
'</style>'))
,p_inline_css=>'img[src*="apex"] {width: 400px ;} '
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'R.N.HAMDOUN90@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20210311112437'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41297950772460068779)
,p_plug_name=>'Photo Competition'
,p_region_name=>'BANNER'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41297843784881068637)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41298704177085026203)
,p_plug_name=>'Submit'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(41297853448727068646)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'For admin approval : <a href="https://apex.oracle.com/pls/apex/f?p=92174:5:&SESSION.::NO:::">click here</a>. If needed, please contact Ms. Rasha <a href = "mailto: r.hamdoon1102@education.qa">r.hamdoon1102@education.qa</a> to be added as an admin.',
'',
''))
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(41298705625039026218)
,p_plug_name=>unistr('Photos - \0627\0644\0635\0648\0631')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(41297851565495068644)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PHOTO_ID,',
'       PHOTO_BLOB,',
'       PHOTO_NAME,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       APPROVED,',
'       RATING,',
'       SUB_DATE,',
unistr('       '' '' as "Open_and_Rate-\0627\0641\062A\062D_\0648_\0642\064A\0645_\0627\0644\0635\0648\0631\0629"'),
'  from PHOTOS',
'  Where APPROVED = ''Y'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('Photos - \0627\0644\0635\0648\0631')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(41298705701647026219)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'R.N.HAMDOUN90@GMAIL.COM'
,p_internal_uid=>41298705701647026219
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298705895815026220)
,p_db_column_name=>'PHOTO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Photo '
,p_column_type=>'NUMBER'
,p_format_mask=>'IMAGE:PHOTOS:PHOTO_BLOB:PHOTO_ID::::::::'
,p_static_id=>'disp_photo'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298705941457026221)
,p_db_column_name=>'PHOTO_BLOB'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Photo - \0627\0644\0635\0648\0631\0629')
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706090273026222)
,p_db_column_name=>'PHOTO_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('Photo Name - \0627\0633\0645 \0627\0644\0635\0648\0631\0629')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706140092026223)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('First Name - \0627\0644\0627\0633\0645 \0627\0644\0627\0648\0644')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706268943026224)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('Last Name -  \0627\0644\0627\0633\0645 \0627\0644\0623\062E\064A\0631')
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706312668026225)
,p_db_column_name=>'APPROVED'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Approved'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706492850026226)
,p_db_column_name=>'RATING'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('Rating - \0627\0644\062A\0642\064A\064A\0645')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706551540026227)
,p_db_column_name=>'SUB_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('Submission Date - \062A\0627\0631\064A\062E \0627\0644\062A\062D\0645\064A\0644')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(41298706934919026231)
,p_db_column_name=>unistr('Open_and_Rate-\0627\0641\062A\062D_\0648_\0642\064A\0645_\0627\0644\0635\0648\0631\0629')
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>unistr('Open And Rate-\0627\0641\062A\062D \0648 \0642\064A\0645 \0627\0644\0635\0648\0631\0629')
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_PHOTO_ID:#PHOTO_ID#'
,p_column_linktext=>unistr('<span style="color:yellow" aria-hidden="true" class="fa fa-star fa-anim-spin"></span><b> Click-Here | \0627\0636\063A\0637 \0647\0646\0627 </b><span style="color:yellow" aria-hidden="true" class="fa fa-star fa-anim-spin"></span>')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(41322052074016576016)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'413220521'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('PHOTO_ID:PHOTO_BLOB:PHOTO_NAME:FIRST_NAME:LAST_NAME:APPROVED:RATING:SUB_DATE:Open_and_Rate-\0627\0641\062A\062D_\0648_\0642\064A\0645_\0627\0644\0635\0648\0631\0629')
,p_sort_column_1=>'RATING'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(41298704364096026205)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(41298704177085026203)
,p_button_name=>'gotosubmit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconSpin:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(41297916087389068717)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Submit - \062A\062D\0645\064A\0644')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-camera-retro'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41298704430457026206)
,p_name=>'P1_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(41298704177085026203)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Note:',
'To Submit your own photo please press the submit button. Please be aware that the photo will not appear immediately as there is an approval process.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(41297914872342068715)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(41298704512896026207)
,p_name=>'P1_NEW_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(41298704177085026203)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\0645\0644\0627\062D\0638\0629:'),
unistr('\0644\062A\062D\0645\064A\0644 \0635\0648\0631\0629 \064A\0631\062C\0649 \0627\0644\0636\063A\0637 \0639\0644\0649 \0631\0632 \0627\0644\062A\062D\0645\064A\0644. \064A\0631\062C\0649 \0627\0644\0627\0646\062A\0638\0627\0631 \0644\0644\0645\0648\0627\0641\0642\0629 \0639\0644\0649 \0627\0644\0635\0648\0631\0629 \0642\0628\0644 \0627\0646 \062A\0638\0647\0631 \0641\064A \0642\0627\0626\0645\0629 \0627\0644\062A\0642\064A\064A\0645.')))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_cattributes_element=>'dir="rtl"'
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(41297914872342068715)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
