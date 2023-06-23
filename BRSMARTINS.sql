prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_default_workspace_id=>30147037607816610489
);
end;
/
prompt  WORKSPACE 30147037607816610489
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   16:20 Friday June 23, 2023
--   Exported By:     BRUNO.SOUSA.MARTINS@GMAIL.COM
--   Export Type:     Workspace Export
--   Version:         23.1.1
--   Instance ID:     63113759365424
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_230100
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>30147037607816610489);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace BRSMARTINS...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 30147137526111617244
 ,p_provisioning_company_id => 30147037607816610489
 ,p_short_name => 'BRSMARTINS'
 ,p_display_name => 'BRSMARTINS'
 ,p_first_schema_provisioned => 'WKSP_BRSMARTINS'
 ,p_company_schemas => 'WKSP_BRSMARTINS:WKSP_BRSMARTINS_2'
 ,p_expire_fnd_user_accounts => 'N'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'BRSMARTI'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'BRSMARTINS'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111224556075029,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111140893075029,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 111073851075029,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '30147037565752610489',
  p_user_name                    => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
  p_first_name                   => 'Bruno',
  p_last_name                    => 'Martins',
  p_description                  => '',
  p_email_address                => 'bruno.sousa.martins@gmail.com',
  p_web_password                 => 'DEEE85D6DDC29170B3EE683D04FBF875044B4357F98D620F42A0308B4117134D7EA983B51619909AA8B3A2733B0361937091E98BD78475BACF9BDD9C432495F5',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'WKSP_BRSMARTINS',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202306201431','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
----------------
--Click Count Logs
--
----------------
--mail
--
----------------
--mail log
--
----------------
--app models
--
----------------
--password history
--
begin
  wwv_imp_workspace.create_password_history (
    p_id => 30147137701234617255,
    p_user_id => 30147037565752610489,
    p_password => '0FEF10F8011BE1B6E9BCBBCFFD4B7058187D6E693E01382EDC2F67F2468EA53AD085F156C67918B683AE90534823C02A2DA63706A7F804283C9D76C5EDD83526');
end;
/
begin
  wwv_imp_workspace.create_password_history (
    p_id => 30147154005615619735,
    p_user_id => 30147037565752610489,
    p_password => 'DEEE85D6DDC29170B3EE683D04FBF875044B4357F98D620F42A0308B4117134D7EA983B51619909AA8B3A2733B0361937091E98BD78475BACF9BDD9C432495F5');
end;
/
----------------
--preferences
--
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30639717429395140237,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'F4500_1157686386582338224_SPLITTER_STATE',
    p_attribute_value => '263:false',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30310784025857869311,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FB_FLOW_ID',
    p_attribute_value => '225246',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30303931800746752942,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP4350_P33_R47031617128214415_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30303329783854252771,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP4350_P96_R185602275935580522_SORT',
    p_attribute_value => 'sort_3_desc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30187603467597697932,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP4500_P1022_R1301955172115853704_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30162196990774328594,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP4500_P1220_R11177418830226625_SORT',
    p_attribute_value => 'fsp_sort_8',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30162423428587815803,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP4500_P1225_R164053306541529880_SORT',
    p_attribute_value => 'sort_1_asc',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30306586392527833409,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_225246_P1_W30314644471951297378',
    p_attribute_value => '30314956933228672699____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30310777547714868532,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1500_W3519715528105919',
    p_attribute_value => '3521529006112497____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30310783967890869303,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4000_P1_W3326806401130228',
    p_attribute_value => '3328003692130542____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30184460914034679265,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P25_W9307709001462905',
    p_attribute_value => '9309908769463151____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30207186989956515427,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P53_W34954404769221837',
    p_attribute_value => '34956410007247564____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30304461773346771866,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P78_W169333814048245920',
    p_attribute_value => '169335112738260044____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30304704079341304982,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P800_W562149154323879326',
    p_attribute_value => '563508467581277904____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30162142192603317451,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4500_P1004_W467833818073240350',
    p_attribute_value => '467836414517307027____',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30311338695944882183,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'PD_GAL_CUR_TAB',
    p_attribute_value => '1',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30162197402203328603,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1225_VIEW_MODE',
    p_attribute_value => '',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30310783794307869269,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P1_DISPLAY_MODE',
    p_attribute_value => 'ICONS',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30184461329466679318,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'PERSISTENT_ITEM_P25_DATE',
    p_attribute_value => '.125',
    p_tenant_id => '');
end;
/
begin
  wwv_imp_workspace.create_preferences$ (
    p_id => 30203596883616957066,
    p_user_id => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_preference_name => 'FSP_IR_4350_P55_W10236304983033455',
    p_attribute_value => '10238325656034902____',
    p_tenant_id => '');
end;
/
----------------
--query builder
--
----------------
--sql scripts
--
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '43524541544520494E444558206964785F6974656D5F6C6F635F736F685F6C6F635F64657074204F4E206974656D5F6C6F635F736F6820286C6F632C2064657074293B0D0A';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30647274383297215551,
    p_flow_id => 4500,
    p_name => '30647274383297215551/CREATE_INDEX_ITEM_LOC_SOH',
    p_pathid => null,
    p_filename => 'CREATE_INDEX_ITEM_LOC_SOH',
    p_title => 'CREATE_INDEX_ITEM_LOC_SOH',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306211014','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306230914','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31478760063560618689
    ,p_file_id => 30647274383297215551
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31478759976797618689
    ,p_file_id => 30647274383297215551
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 66
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE INDEX idx_item_loc_soh_loc_dept ON item_loc_soh (loc, dept)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31477711989749127263,
    p_file_id => 30647274383297215551,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230913','YYYYMMDDHH24MI'),
    p_start_time => 1263127264,
    p_ended => to_date('202306230913','YYYYMMDDHH24MI'),
    p_end_time => 1263127419,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31477712212492127264
    ,p_result_id => 31477711989749127263
    ,p_file_id => 30647274383297215551
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE INDEX idx_item_loc_soh_loc_dept ON item_loc_soh (loc, dept)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/14: ORA-00955: name is already used by an existing object'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 797'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SYS_SQL", line 1658'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 782'||wwv_flow.LF||
'ORA-06512: at "APEX_230100.WWV_FLOW_DYNAMIC_EXEC", line 2035'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230913','YYYYMMDDHH24MI')
    ,p_start_time => 1263127264
    ,p_ended => to_date('202306230913','YYYYMMDDHH24MI')
    ,p_end_time => 1263127266
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230913','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31477712453090127266
    ,p_result_id => 31477711989749127263
    ,p_file_id => 30647274383297215551
    ,p_seq_id => 2
    ,p_stmt_num => 3
 ,p_stmt_text => 
'CREATE INDEX idx_loc_item_loc_soh_loc_dept ON item_loc_soh (loc)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/47: ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 797'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SYS_SQL", line 1658'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 782'||wwv_flow.LF||
'ORA-06512: at "APEX_230100.WWV_FLOW_DYNAMIC_EXEC", line 2035'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230913','YYYYMMDDHH24MI')
    ,p_start_time => 1263127266
    ,p_ended => to_date('202306230913','YYYYMMDDHH24MI')
    ,p_end_time => 1263127419
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230913','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30647275182403215958,
    p_file_id => 30647274383297215551,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306211014','YYYYMMDDHH24MI'),
    p_start_time => 1246215959,
    p_ended => to_date('202306211014','YYYYMMDDHH24MI'),
    p_end_time => 1246215965,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30647275230824215959
    ,p_result_id => 30647275182403215958
    ,p_file_id => 30647274383297215551
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE INDEX idx_item_loc_soh_loc_dept ON item_loc_soh (loc, dept)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Index created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306211014','YYYYMMDDHH24MI')
    ,p_start_time => 1246215959
    ,p_ended => to_date('202306211014','YYYYMMDDHH24MI')
    ,p_end_time => 1246215965
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306211014','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '43524541544520494E444558206964785F6C6F635F6974656D5F6C6F635F736F685F6C6F635F64657074204F4E206974656D5F6C6F635F736F6820286C6F63293B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 31479143582770621223,
    p_flow_id => 4500,
    p_name => '31479143582770621223/CREATE_INDEX_ITEM_LOC_SOH_2',
    p_pathid => null,
    p_filename => 'CREATE_INDEX_ITEM_LOC_SOH_2',
    p_title => 'CREATE_INDEX_ITEM_LOC_SOH_2',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306230914','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479143742964621224
    ,p_file_id => 31479143582770621223
    ,p_stmt_number => 2
    ,p_src_line_number => 1
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479143648774621224
    ,p_file_id => 31479143582770621223
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 64
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE INDEX idx_loc_item_loc_soh_loc_dept ON item_loc_soh (loc)'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31479242956444144996,
    p_file_id => 31479143582770621223,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230916','YYYYMMDDHH24MI'),
    p_start_time => 1263144997,
    p_ended => to_date('202306230916','YYYYMMDDHH24MI'),
    p_end_time => 1263145003,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31479243004645144997
    ,p_result_id => 31479242956444144996
    ,p_file_id => 31479143582770621223
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE INDEX idx_loc_item_loc_soh_loc_dept ON item_loc_soh (loc)'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Index created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306230916','YYYYMMDDHH24MI')
    ,p_start_time => 1263144998
    ,p_ended => to_date('202306230916','YYYYMMDDHH24MI')
    ,p_end_time => 1263145003
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306230916','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31479144963118621979,
    p_file_id => 31479143582770621223,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230914','YYYYMMDDHH24MI'),
    p_start_time => 1262621981,
    p_ended => to_date('202306230914','YYYYMMDDHH24MI'),
    p_end_time => 1262622190,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31479145017335621981
    ,p_result_id => 31479144963118621979
    ,p_file_id => 31479143582770621223
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE INDEX idx_loc_item_loc_soh_loc_dept ON item_loc_soh (loc)'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 1/47: ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 797'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SYS_SQL", line 1658'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 782'||wwv_flow.LF||
'ORA-06512: at "APEX_230100.WWV_FLOW_DYNAMIC_EXEC", line 2035'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230914','YYYYMMDDHH24MI')
    ,p_start_time => 1262621981
    ,p_ended => to_date('202306230914','YYYYMMDDHH24MI')
    ,p_end_time => 1262622190
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230914','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445205441424C45206974656D5F6C6F635F736F685F636F73745F657874280D0A202020206974656D20202020202020202020564152434841523228323529204E4F54204E554C4C2C0D0A202020206C6F6320202020202020202020204E554D';
wwv_flow_imp.g_varchar2_table(2) := '424552283130292020204E4F54204E554C4C2C0D0A2020202064657074202020202020202020204E554D424552283429202020204E4F54204E554C4C2C0D0A20202020756E69745F636F737420202020204E554D4245522832302C3429204E4F54204E55';
wwv_flow_imp.g_varchar2_table(3) := '4C4C2C0D0A2020202073746F636B5F6F6E5F68616E64204E554D4245522831322C3429204E4F54204E554C4C2C0D0A20202020636F73745F6578742020202020204E554D4245522832302C3429204E4F54204E554C4C2C0D0A20202020434F4E53545241';
wwv_flow_imp.g_varchar2_table(4) := '494E5420706B5F6974656D5F6C6F635F736F685F636F73745F6578742020202020205052494D415259204B455920286974656D2C206C6F632C2064657074292C0D0A20202020434F4E53545241494E5420666B5F6974656D5F6C6F635F736F685F636F73';
wwv_flow_imp.g_varchar2_table(5) := '745F657874202020202020464F524549474E204B455920286974656D29205245464552454E434553206974656D286974656D292C0D0A20202020434F4E53545241494E5420666B5F6C6F635F6974656D5F6C6F635F736F685F636F73745F657874202046';
wwv_flow_imp.g_varchar2_table(6) := '4F524549474E204B455920286C6F632920205245464552454E434553206C6F63286C6F63290D0A293B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30753273811048567376,
    p_flow_id => 4500,
    p_name => '30753273811048567376/CREATE_TABLE_SOH_COST',
    p_pathid => null,
    p_filename => 'CREATE_TABLE_SOH_COST',
    p_title => 'CREATE_TABLE_SOH_COST',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306211359','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306231443','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590486409972594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 2
    ,p_src_line_number => 11
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485465393594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 38
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    item          VARCHAR2(25) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485570894594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 80
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    loc           NUMBER(10)   NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485653703594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 122
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    dept          NUMBER(4)    NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485705334594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 164
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    unit_cost     NUMBER(20,4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485843725594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 206
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    stock_on_hand NUMBER(12,4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485975811594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 248
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    cost_ext      NUMBER(20,4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590486048177594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 290
    ,p_length => 76
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT pk_item_loc_soh_cost_ext      PRIMARY KEY (item, loc, dept), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590486176550594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 367
    ,p_length => 87
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT fk_item_loc_soh_cost_ext      FOREIGN KEY (item) REFERENCES item(item), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590486285034594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 455
    ,p_length => 84
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT fk_loc_item_loc_soh_cost_ext  FOREIGN KEY (loc)  REFERENCES loc(loc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590486303276594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 540
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31590485343056594678
    ,p_file_id => 30753273811048567376
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE item_loc_soh_cost_ext( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30754647496927587525,
    p_file_id => 30753273811048567376,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306211403','YYYYMMDDHH24MI'),
    p_start_time => 1247587526,
    p_ended => to_date('202306211403','YYYYMMDDHH24MI'),
    p_end_time => 1247587534,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30754647596902587526
    ,p_result_id => 30754647496927587525
    ,p_file_id => 30753273811048567376
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE item_loc_soh_cost_ext(     item          VARCHAR2(25) NOT NULL,     loc           NUMBER(10)   NOT NULL,     dept          NUMBER(4)    NOT NULL,     unit_cost     NUMBER(20,4) NOT NULL,     stock_on_hand NUMBER(12,4) NOT NULL,     cost_ext      NUMBER(20,4) NOT NULL,     CONSTRAINT pk_item_loc_soh_cost_ext      PRIMARY KEY (item, loc),     CONSTRAINT fk_item_loc_soh_cost_ext      FOR'||
'EIGN KEY (item) REFERENCES item(item),     CONSTRAINT fk_loc_item_loc_soh_cost_ext  FOREIGN KEY (loc)  REFERENCES loc(loc) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306211403','YYYYMMDDHH24MI')
    ,p_start_time => 1247587526
    ,p_ended => to_date('202306211403','YYYYMMDDHH24MI')
    ,p_end_time => 1247587533
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306211403','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30752733152398054995,
    p_file_id => 30753273811048567376,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306211400','YYYYMMDDHH24MI'),
    p_start_time => 1247054996,
    p_ended => to_date('202306211400','YYYYMMDDHH24MI'),
    p_end_time => 1247055002,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30752733285773054997
    ,p_result_id => 30752733152398054995
    ,p_file_id => 30753273811048567376
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE item_loc_soh_cost_ext(     item          VARCHAR2(25) NOT NULL,     loc           NUMBER(10) NOT NULL,     dept          NUMBER(4) NOT NULL,     unit_cost     NUMBER(20,4) NOT NULL,     stock_on_hand NUMBER(12,4) NOT NULL,     cost_ext      NUMBER(20,4) NOT NULL,     CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc),     CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(item),   '||
'  CONSTRAINT fk_loc FOREIGN KEY (loc) REFERENCES loc(loc) )'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'Error at line 8/16: ORA-02264: name already used by an existing constraint'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 797'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SYS_SQL", line 1658'||wwv_flow.LF||
'ORA-06512: at "SYS.WWV_DBMS_SQL_APEX_230100", line 782'||wwv_flow.LF||
'ORA-06512: at "APEX_230100.WWV_FLOW_DYNAMIC_EXEC", line 2035'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306211400','YYYYMMDDHH24MI')
    ,p_start_time => 1247054997
    ,p_ended => to_date('202306211400','YYYYMMDDHH24MI')
    ,p_end_time => 1247055002
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306211400','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445205441424C4520555345525F44455054280D0A20202020757365725F696420564152434841523228333029204E4F54204E554C4C2C0D0A2020202064657074204E554D424552283429204E4F54204E554C4C2C0D0A20202020434F4E5354';
wwv_flow_imp.g_varchar2_table(2) := '5241494E5420706B5F555345525F44455054205052494D415259204B45592028757365725F69642C2064657074290D0A293B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30628295116007004576,
    p_flow_id => 4500,
    p_name => '30628295116007004576/CREATE_TABLE_USER_DEPT',
    p_pathid => null,
    p_filename => 'CREATE_TABLE_USER_DEPT',
    p_title => 'CREATE_TABLE_USER_DEPT',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306210939','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295727066004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 2
    ,p_src_line_number => 5
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295365641004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 26
    ,p_length => 35
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    user_id VARCHAR2(30) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295438531004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 62
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    dept NUMBER(4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295528340004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 92
    ,p_length => 56
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT pk_USER_DEPT PRIMARY KEY (user_id, dept) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295609766004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 149
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30628295230133004577
    ,p_file_id => 30628295116007004576
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 24
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE USER_DEPT( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30628298708910004936,
    p_file_id => 30628295116007004576,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210939','YYYYMMDDHH24MI'),
    p_start_time => 1246004937,
    p_ended => to_date('202306210939','YYYYMMDDHH24MI'),
    p_end_time => 1246004943,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30628298872073004937
    ,p_result_id => 30628298708910004936
    ,p_file_id => 30628295116007004576
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE USER_DEPT(     user_id VARCHAR2(30) NOT NULL,     dept NUMBER(4) NOT NULL,     CONSTRAINT pk_USER_DEPT PRIMARY KEY (user_id, dept) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210939','YYYYMMDDHH24MI')
    ,p_start_time => 1246004937
    ,p_ended => to_date('202306210939','YYYYMMDDHH24MI')
    ,p_end_time => 1246004943
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210939','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445204F52205245504C414345205459504520745F6974656D5F6C6F635F736F68204953204F424A45435420280D0A20206974656D20564152434841523228313030292C0D0A20206C6F63204E554D4245522C0D0A202064657074204E554D42';
wwv_flow_imp.g_varchar2_table(2) := '45522C0D0A2020756E69745F636F7374204E554D4245522C0D0A202073746F636B5F6F6E5F68616E64204E554D4245520D0A293B0D0A2F0D0A435245415445204F52205245504C414345205459504520745F6974656D5F6C6F635F736F685F6C69737420';
wwv_flow_imp.g_varchar2_table(3) := '4953205441424C45204F4620745F6974656D5F6C6F635F736F683B0D0A2F';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 31562339530806691095,
    p_flow_id => 4500,
    p_name => '31562339530806691095/CREATE_TYPES_ITEM_LOC_SOH',
    p_pathid => null,
    p_filename => 'CREATE_TYPES_ITEM_LOC_SOH',
    p_title => 'CREATE_TYPES_ITEM_LOC_SOH',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306231333','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340362890691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 2
    ,p_src_line_number => 8
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340594644691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 4
    ,p_src_line_number => 10
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562339665551691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 50
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TYPE t_item_loc_soh IS OBJECT ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562339793951691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 52
    ,p_length => 22
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  item VARCHAR2(100), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562339803906691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 75
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  loc NUMBER, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562339954128691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 90
    ,p_length => 15
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  dept NUMBER, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340074258691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 106
    ,p_length => 20
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  unit_cost NUMBER, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340125584691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 127
    ,p_length => 23
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  stock_on_hand NUMBER '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340295554691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 151
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31562340461726691096
    ,p_file_id => 31562339530806691095
    ,p_stmt_number => 3
    ,p_src_line_number => 9
    ,p_offset => 158
    ,p_length => 71
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TYPE t_item_loc_soh_list IS TABLE OF t_item_loc_soh; '
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445204F52205245504C4143452054595045206C6F635F74797065204153204F424A45435420280D0A20206C6F635F6465736320564152434841523228313030292C200D0A20206C6F632020202020204E554D424552200D0A293B0D0A2F0D0A';
wwv_flow_imp.g_varchar2_table(2) := '0D0A435245415445204F52205245504C4143452054595045206C6F635F7461626C655F74797065204153205441424C45204F46206C6F635F747970653B0D0A2F';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 31562363039140695743,
    p_flow_id => 4500,
    p_name => '31562363039140695743/CREATE_TYPES_LOC',
    p_pathid => null,
    p_filename => 'CREATE_TYPES_LOC',
    p_title => 'CREATE_TYPES_LOC',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306231334','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306231349','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574473158110782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 2
    ,p_src_line_number => 5
    ,p_offset => -1
    ,p_length => 2
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/ '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574473312471782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 5
    ,p_src_line_number => 8
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574472729042782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TYPE loc_type AS OBJECT ( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574472852163782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 46
    ,p_length => 27
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  loc_desc VARCHAR2(100),  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574472984114782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 74
    ,p_length => 19
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  loc      NUMBER  '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574473002975782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 94
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31574473267444782996
    ,p_file_id => 31562363039140695743
    ,p_stmt_number => 4
    ,p_src_line_number => 7
    ,p_offset => 103
    ,p_length => 60
    ,p_stmt_class => 3
    ,p_stmt_id => 27
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE OR REPLACE TYPE loc_table_type AS TABLE OF loc_type; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31562372395215696562,
    p_file_id => 31562363039140695743,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306231334','YYYYMMDDHH24MI'),
    p_start_time => 1264696564,
    p_ended => to_date('202306231334','YYYYMMDDHH24MI'),
    p_end_time => 1264696569,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31562372473495696564
    ,p_result_id => 31562372395215696562
    ,p_file_id => 31562363039140695743
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE TYPE loc_type AS OBJECT (   loc NUMBER,   loc_desc VARCHAR2(100) ); '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Type created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306231334','YYYYMMDDHH24MI')
    ,p_start_time => 1264696564
    ,p_ended => to_date('202306231334','YYYYMMDDHH24MI')
    ,p_end_time => 1264696567
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306231334','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31562372545541696567
    ,p_result_id => 31562372395215696562
    ,p_file_id => 31562363039140695743
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE OR REPLACE TYPE loc_table_type AS TABLE OF loc_type; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Type created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306231334','YYYYMMDDHH24MI')
    ,p_start_time => 1264696567
    ,p_ended => to_date('202306231334','YYYYMMDDHH24MI')
    ,p_end_time => 1264696569
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306231334','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31575004264359271144,
    p_file_id => 31562363039140695743,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306231349','YYYYMMDDHH24MI'),
    p_start_time => 1264271146,
    p_ended => to_date('202306231349','YYYYMMDDHH24MI'),
    p_end_time => 1264271166,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31575004392934271146
    ,p_result_id => 31575004264359271144
    ,p_file_id => 31562363039140695743
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE OR REPLACE TYPE loc_type AS OBJECT (   loc_desc VARCHAR2(100),    loc      NUMBER  ); '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Type created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306231349','YYYYMMDDHH24MI')
    ,p_start_time => 1264271146
    ,p_ended => to_date('202306231349','YYYYMMDDHH24MI')
    ,p_end_time => 1264271164
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306231349','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31575004444278271164
    ,p_result_id => 31575004264359271144
    ,p_file_id => 31562363039140695743
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE OR REPLACE TYPE loc_table_type AS TABLE OF loc_type; '
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Type created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306231349','YYYYMMDDHH24MI')
    ,p_start_time => 1264271164
    ,p_ended => to_date('202306231349','YYYYMMDDHH24MI')
    ,p_end_time => 1264271166
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306231349','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '435245415445205441424C45206974656D280D0A202020206974656D20564152434841523228323529204E4F54204E554C4C2C0D0A2020202064657074204E554D424552283429204E4F54204E554C4C2C0D0A202020206974656D5F6465736320564152';
wwv_flow_imp.g_varchar2_table(2) := '434841523228323529204E4F54204E554C4C2C0D0A20202020434F4E53545241494E5420706B5F6974656D205052494D415259204B455920286974656D290D0A293B0D0A0D0A435245415445205441424C45206C6F63280D0A202020206C6F63204E554D';
wwv_flow_imp.g_varchar2_table(3) := '42455228313029204E4F54204E554C4C2C0D0A202020206C6F635F6465736320564152434841523228323529204E4F54204E554C4C2C0D0A20202020434F4E53545241494E5420706B5F6C6F63205052494D415259204B455920286C6F63290D0A293B0D';
wwv_flow_imp.g_varchar2_table(4) := '0A0D0A435245415445205441424C45206974656D5F6C6F635F736F68280D0A202020206974656D20564152434841523228323529204E4F54204E554C4C2C0D0A202020206C6F63204E554D42455228313029204E4F54204E554C4C2C0D0A202020206465';
wwv_flow_imp.g_varchar2_table(5) := '7074204E554D424552283429204E4F54204E554C4C2C0D0A20202020756E69745F636F7374204E554D4245522832302C3429204E4F54204E554C4C2C0D0A2020202073746F636B5F6F6E5F68616E64204E554D4245522831322C3429204E4F54204E554C';
wwv_flow_imp.g_varchar2_table(6) := '4C2C0D0A20202020434F4E53545241494E5420706B5F6974656D5F6C6F635F736F68205052494D415259204B455920286974656D2C206C6F632C2064657074292C0D0A20202020434F4E53545241494E5420666B5F6974656D20464F524549474E204B45';
wwv_flow_imp.g_varchar2_table(7) := '5920286974656D29205245464552454E434553206974656D286974656D292C0D0A20202020434F4E53545241494E5420666B5F6C6F6320464F524549474E204B455920286C6F6329205245464552454E434553206C6F63286C6F63290D0A293B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30167012822076898414,
    p_flow_id => 4500,
    p_name => '30167012822076898414/Create_tables',
    p_pathid => null,
    p_filename => 'Create_tables',
    p_title => 'Create_tables',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306200947','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306231431','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902979655521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 2
    ,p_src_line_number => 6
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903592313521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 5
    ,p_src_line_number => 12
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904629879521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 8
    ,p_src_line_number => 23
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902387071521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 19
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE item( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902449533521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 21
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    item VARCHAR2(25) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902580570521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 54
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    dept NUMBER(4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902681540521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 84
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    item_desc VARCHAR2(25) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902742900521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 122
    ,p_length => 42
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT pk_item PRIMARY KEY (item) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587902856704521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 165
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903042489521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 4
    ,p_src_line_number => 8
    ,p_offset => 171
    ,p_length => 18
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE loc( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903124810521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 4
    ,p_src_line_number => 9
    ,p_offset => 190
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    loc NUMBER(10) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903219459521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 4
    ,p_src_line_number => 10
    ,p_offset => 220
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    loc_desc VARCHAR2(25) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903337018521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 4
    ,p_src_line_number => 11
    ,p_offset => 257
    ,p_length => 40
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT pk_loc PRIMARY KEY (loc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903411709521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 4
    ,p_src_line_number => 12
    ,p_offset => 298
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904187036521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 19
    ,p_offset => 463
    ,p_length => 41
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    stock_on_hand NUMBER(12,4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904289265521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 20
    ,p_offset => 505
    ,p_length => 62
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904378303521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 21
    ,p_offset => 568
    ,p_length => 65
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(item), '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904457861521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 22
    ,p_offset => 634
    ,p_length => 60
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    CONSTRAINT fk_loc FOREIGN KEY (loc) REFERENCES loc(loc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904517819521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 23
    ,p_offset => 695
    ,p_length => 1
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => ')'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903600595521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 14
    ,p_offset => 304
    ,p_length => 27
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'CREATE TABLE item_loc_soh( '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903784656521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 15
    ,p_offset => 332
    ,p_length => 32
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    item VARCHAR2(25) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903874661521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 16
    ,p_offset => 365
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    loc NUMBER(10) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587903912332521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 17
    ,p_offset => 395
    ,p_length => 29
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    dept NUMBER(4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31587904047166521225
    ,p_file_id => 30167012822076898414
    ,p_stmt_number => 7
    ,p_src_line_number => 18
    ,p_offset => 425
    ,p_length => 37
    ,p_stmt_class => 2
    ,p_stmt_id => 26
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    unit_cost NUMBER(20,4) NOT NULL, '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30625015714895434846,
    p_file_id => 30167012822076898414,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210930','YYYYMMDDHH24MI'),
    p_start_time => 1245434848,
    p_ended => to_date('202306210930','YYYYMMDDHH24MI'),
    p_end_time => 1245434871,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30625015804848434848
    ,p_result_id => 30625015714895434846
    ,p_file_id => 30167012822076898414
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'CREATE TABLE item(     item VARCHAR2(25) NOT NULL,     dept NUMBER(4) NOT NULL,     item_desc VARCHAR2(25) NOT NULL,     CONSTRAINT pk_item PRIMARY KEY (item) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_start_time => 1245434848
    ,p_ended => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_end_time => 1245434864
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210930','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30625016229548434865
    ,p_result_id => 30625015714895434846
    ,p_file_id => 30167012822076898414
    ,p_seq_id => 2
    ,p_stmt_num => 4
 ,p_stmt_text => 
'CREATE TABLE loc(     loc NUMBER(10) NOT NULL,     loc_desc VARCHAR2(25) NOT NULL,     CONSTRAINT pk_loc PRIMARY KEY (loc) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_start_time => 1245434865
    ,p_ended => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_end_time => 1245434867
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210930','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30625016318921434867
    ,p_result_id => 30625015714895434846
    ,p_file_id => 30167012822076898414
    ,p_seq_id => 3
    ,p_stmt_num => 7
 ,p_stmt_text => 
'CREATE TABLE item_loc_soh(     item VARCHAR2(25) NOT NULL,     loc NUMBER(10) NOT NULL,     dept NUMBER(4) NOT NULL,     unit_cost NUMBER(20,4) NOT NULL,     stock_on_hand NUMBER(12,4) NOT NULL,     CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc),     CONSTRAINT fk_item FOREIGN KEY (item) REFERENCES item(item),     CONSTRAINT fk_loc FOREIGN KEY (loc) REFERENCES loc(loc) )'
    ,p_result_size => 0
    ,p_result_rows => 0
    ,p_msg => 'Table created.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_start_time => 1245434867
    ,p_ended => to_date('202306210930','YYYYMMDDHH24MI')
    ,p_end_time => 1245434870
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210930','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '696E7365727420696E746F206974656D286974656D2C646570742C6974656D5F64657363290D0A73656C656374206C6576656C2C20726F756E642844424D535F52414E444F4D2E76616C756528312C31303029292C207472616E736C6174652864626D73';
wwv_flow_imp.g_varchar2_table(2) := '5F72616E646F6D2E737472696E67282761272C203230292C202761626358595A272C206C6576656C292066726F6D206475616C20636F6E6E656374206279206C6576656C203C3D2031303030303B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30625872512023447707,
    p_flow_id => 4500,
    p_name => '30625872512023447707/INSERT_ITEM',
    p_pathid => null,
    p_filename => 'INSERT_ITEM',
    p_title => 'INSERT_ITEM',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306210932','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30625872866422447708
    ,p_file_id => 30625872512023447707
    ,p_stmt_number => 2
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30625872679966447708
    ,p_file_id => 30625872512023447707
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into item(item,dept,item_desc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30625872745430447708
    ,p_file_id => 30625872512023447707
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 40
    ,p_length => 138
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'select level, round(DBMS_RANDOM.value(1,100)), translate(dbms_random.string(''a'', 20), ''abcXYZ'', level) from dual connect by level <= 10000'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30626648632750964769,
    p_file_id => 30625872512023447707,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210932','YYYYMMDDHH24MI'),
    p_start_time => 1245964771,
    p_ended => to_date('202306210932','YYYYMMDDHH24MI'),
    p_end_time => 1245964820,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30626648731614964771
    ,p_result_id => 30626648632750964769
    ,p_file_id => 30625872512023447707
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'insert into item(item,dept,item_desc) select level, round(DBMS_RANDOM.value(1,100)), translate(dbms_random.string(''a'', 20), ''abcXYZ'', level) from dual connect by level <= 10000'
    ,p_result_size => 0
    ,p_result_rows => 10000
    ,p_msg => '10000 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210932','YYYYMMDDHH24MI')
    ,p_start_time => 1245964771
    ,p_ended => to_date('202306210932','YYYYMMDDHH24MI')
    ,p_end_time => 1245964820
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210932','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '4445434C4152450D0A202054595045206974656D5F6C6F635F736F685F74616274797065204953205441424C45204F46206974656D5F6C6F635F736F6825524F57545950453B0D0A20206C5F6974656D5F6C6F635F736F685F746162206974656D5F6C6F';
wwv_flow_imp.g_varchar2_table(2) := '635F736F685F74616274797065203A3D206974656D5F6C6F635F736F685F7461627479706528293B0D0A424547494E0D0A2020464F52206920494E202853454C454354206974656D2C206C6F632C20646570740D0A20202020202020202020202046524F';
wwv_flow_imp.g_varchar2_table(3) := '4D206974656D2C206C6F63290D0A20204C4F4F500D0A202020206C5F6974656D5F6C6F635F736F685F7461622E455854454E443B0D0A202020206C5F6974656D5F6C6F635F736F685F746162286C5F6974656D5F6C6F635F736F685F7461622E4C415354';
wwv_flow_imp.g_varchar2_table(4) := '292E6974656D203A3D20692E6974656D3B0D0A202020206C5F6974656D5F6C6F635F736F685F746162286C5F6974656D5F6C6F635F736F685F7461622E4C415354292E6C6F63203A3D20692E6C6F633B0D0A202020206C5F6974656D5F6C6F635F736F68';
wwv_flow_imp.g_varchar2_table(5) := '5F746162286C5F6974656D5F6C6F635F736F685F7461622E4C415354292E64657074203A3D20692E646570743B0D0A202020206C5F6974656D5F6C6F635F736F685F746162286C5F6974656D5F6C6F635F736F685F7461622E4C415354292E756E69745F';
wwv_flow_imp.g_varchar2_table(6) := '636F7374203A3D2044424D535F52414E444F4D2E56414C554528353030302C203530303030293B0D0A202020206C5F6974656D5F6C6F635F736F685F746162286C5F6974656D5F6C6F635F736F685F7461622E4C415354292E73746F636B5F6F6E5F6861';
wwv_flow_imp.g_varchar2_table(7) := '6E64203A3D20524F554E442844424D535F52414E444F4D2E56414C554528313030302C2031303030303029293B0D0A202020200D0A202020202D2D20496E736572697220656D206C6F746520612063616461203130303020726567697374726F730D0A20';
wwv_flow_imp.g_varchar2_table(8) := '2020204946206C5F6974656D5F6C6F635F736F685F7461622E434F554E54203D2031303030205448454E0D0A202020202020464F52414C4C206A20494E20312E2E6C5F6974656D5F6C6F635F736F685F7461622E434F554E540D0A202020202020202049';
wwv_flow_imp.g_varchar2_table(9) := '4E5345525420494E544F206974656D5F6C6F635F736F682056414C554553206C5F6974656D5F6C6F635F736F685F746162286A293B0D0A2020202020200D0A2020202020206C5F6974656D5F6C6F635F736F685F7461622E44454C4554453B0D0A202020';
wwv_flow_imp.g_varchar2_table(10) := '202020434F4D4D49543B0D0A20202020454E442049463B0D0A2020454E44204C4F4F503B0D0A20200D0A20202D2D20496E7365726972206F7320726567697374726F732072657374616E7465730D0A2020464F52414C4C206A20494E20312E2E6C5F6974';
wwv_flow_imp.g_varchar2_table(11) := '656D5F6C6F635F736F685F7461622E434F554E540D0A20202020494E5345525420494E544F206974656D5F6C6F635F736F682056414C554553206C5F6974656D5F6C6F635F736F685F746162286A293B0D0A20200D0A2020434F4D4D49543B0D0A454E44';
wwv_flow_imp.g_varchar2_table(12) := '3B0D0A2F';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30728251913271792390,
    p_flow_id => 4500,
    p_name => '30728251913271792390/INSERT_ITEM_LOC_SOH_v2',
    p_pathid => null,
    p_filename => 'INSERT_ITEM_LOC_SOH_v2',
    p_title => 'INSERT_ITEM_LOC_SOH_v2',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306211316','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306230917','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269615150150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 2
    ,p_src_line_number => 31
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => '/'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479266658640150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 8
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'DECLARE '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479266764819150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 10
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479266863716150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 73
    ,p_length => 69
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479266942364150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 4
    ,p_offset => 143
    ,p_length => 6
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'BEGIN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267050687150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 5
    ,p_offset => 150
    ,p_length => 35
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FOR i IN (SELECT item, loc, dept '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267165836150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 6
    ,p_offset => 186
    ,p_length => 28
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '            FROM item, loc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267240201150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 7
    ,p_offset => 215
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  LOOP '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267376141150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 8
    ,p_offset => 223
    ,p_length => 31
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab.EXTEND; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267495513150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 9
    ,p_offset => 255
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267527403150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 10
    ,p_offset => 320
    ,p_length => 62
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267638301150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 11
    ,p_offset => 383
    ,p_length => 64
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).dept := i.dept; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267721102150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 12
    ,p_offset => 448
    ,p_length => 93
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267857105150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 13
    ,p_offset => 542
    ,p_length => 105
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000)); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479267940756150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 14
    ,p_offset => 648
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '     '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268092011150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 15
    ,p_offset => 654
    ,p_length => 45
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    -- Inserir em lote a cada 1000 registros '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268153058150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 16
    ,p_offset => 700
    ,p_length => 44
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    IF l_item_loc_soh_tab.COUNT = 1000 THEN '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268235464150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 17
    ,p_offset => 745
    ,p_length => 46
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      FORALL j IN 1..l_item_loc_soh_tab.COUNT '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268394969150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 18
    ,p_offset => 792
    ,p_length => 63
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '        INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268719970150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 22
    ,p_offset => 913
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    END IF; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268870911150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 23
    ,p_offset => 926
    ,p_length => 12
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  END LOOP; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268949092150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 24
    ,p_offset => 939
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269096247150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 25
    ,p_offset => 943
    ,p_length => 36
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  -- Inserir os registros restantes '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268473202150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 19
    ,p_offset => 856
    ,p_length => 7
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '       '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268564106150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 20
    ,p_offset => 864
    ,p_length => 33
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      l_item_loc_soh_tab.DELETE; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479268665425150846
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 21
    ,p_offset => 898
    ,p_length => 14
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '      COMMIT; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269171402150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 26
    ,p_offset => 980
    ,p_length => 42
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  FORALL j IN 1..l_item_loc_soh_tab.COUNT '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269294134150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 27
    ,p_offset => 1023
    ,p_length => 59
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '    INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j); '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269349785150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 28
    ,p_offset => 1083
    ,p_length => 3
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '   '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269438239150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 29
    ,p_offset => 1087
    ,p_length => 10
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => '  COMMIT; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 31479269597566150847
    ,p_file_id => 30728251913271792390
    ,p_stmt_number => 1
    ,p_src_line_number => 30
    ,p_offset => 1098
    ,p_length => 5
    ,p_stmt_class => 3
    ,p_stmt_id => 28
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'END; '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30728413158740305744,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306211316','YYYYMMDDHH24MI'),
    p_start_time => 1247305745,
    p_ended => to_date('202306211316','YYYYMMDDHH24MI'),
    p_end_time => 1247309492,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30728413202929305746
    ,p_result_id => 30728413158740305744
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306211316','YYYYMMDDHH24MI')
    ,p_start_time => 1247305746
    ,p_ended => to_date('202306211316','YYYYMMDDHH24MI')
    ,p_end_time => 1247309491
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306211316','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31479270250596151225,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230917','YYYYMMDDHH24MI'),
    p_start_time => 1263151226,
    p_ended => to_date('202306230917','YYYYMMDDHH24MI'),
    p_end_time => 1263151230,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31479270387740151226
    ,p_result_id => 31479270250596151225
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;       COMMIT;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00001: unique constraint (WKSP_BRSMARTINS.PK_ITEM_LOC_SOH) violated'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230917','YYYYMMDDHH24MI')
    ,p_start_time => 1263151226
    ,p_ended => to_date('202306230917','YYYYMMDDHH24MI')
    ,p_end_time => 1263151230
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230917','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30728574784467321276,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306211318','YYYYMMDDHH24MI'),
    p_start_time => 1247321278,
    p_ended => to_date('202306211319','YYYYMMDDHH24MI'),
    p_end_time => 1247323725,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30728574837556321278
    ,p_result_id => 30728574784467321276
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;       COMMIT;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306211318','YYYYMMDDHH24MI')
    ,p_start_time => 1247321278
    ,p_ended => to_date('202306211319','YYYYMMDDHH24MI')
    ,p_end_time => 1247323725
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306211319','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31529423006480918674,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306231125','YYYYMMDDHH24MI'),
    p_start_time => 1263918675,
    p_ended => to_date('202306231126','YYYYMMDDHH24MI'),
    p_end_time => 1263925077,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31529423105695918676
    ,p_result_id => 31529423006480918674
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;       COMMIT;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306231125','YYYYMMDDHH24MI')
    ,p_start_time => 1263918676
    ,p_ended => to_date('202306231126','YYYYMMDDHH24MI')
    ,p_end_time => 1263925077
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306231126','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31479452626878642101,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230917','YYYYMMDDHH24MI'),
    p_start_time => 1262642102,
    p_ended => to_date('202306230917','YYYYMMDDHH24MI'),
    p_end_time => 1262642240,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31479452780522642103
    ,p_result_id => 31479452626878642101
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;       COMMIT;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230917','YYYYMMDDHH24MI')
    ,p_start_time => 1262642103
    ,p_ended => to_date('202306230917','YYYYMMDDHH24MI')
    ,p_end_time => 1262642240
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230917','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 31479199849951634894,
    p_file_id => 30728251913271792390,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306230916','YYYYMMDDHH24MI'),
    p_start_time => 1262634896,
    p_ended => to_date('202306230916','YYYYMMDDHH24MI'),
    p_end_time => 1262635155,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 31479199938338634896
    ,p_result_id => 31479199849951634894
    ,p_file_id => 30728251913271792390
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'DECLARE   TYPE item_loc_soh_tabtype IS TABLE OF item_loc_soh%ROWTYPE;   l_item_loc_soh_tab item_loc_soh_tabtype := item_loc_soh_tabtype(); BEGIN   FOR i IN (SELECT item, loc, dept             FROM item, loc)   LOOP     l_item_loc_soh_tab.EXTEND;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).item := i.item;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).loc := i.loc;     l_item_loc_soh_tab(l_ite'||
'm_loc_soh_tab.LAST).dept := i.dept;     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).unit_cost := DBMS_RANDOM.VALUE(5000, 50000);     l_item_loc_soh_tab(l_item_loc_soh_tab.LAST).stock_on_hand := ROUND(DBMS_RANDOM.VALUE(1000, 100000));          -- Inserir em lote a cada 1000 registros     IF l_item_loc_soh_tab.COUNT = 1000 THEN       FORALL j IN 1..l_item_loc_soh_tab.COUNT         INSERT INTO item_l'||
'oc_soh VALUES l_item_loc_soh_tab(j);              l_item_loc_soh_tab.DELETE;       COMMIT;     END IF;   END LOOP;      -- Inserir os registros restantes   FORALL j IN 1..l_item_loc_soh_tab.COUNT     INSERT INTO item_loc_soh VALUES l_item_loc_soh_tab(j);      COMMIT; END; '
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-01536: space quota exceeded for tablespace ''APEX_BIGFILE_INSTANCE_TBS5'''||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at line 17'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306230916','YYYYMMDDHH24MI')
    ,p_start_time => 1262634896
    ,p_ended => to_date('202306230916','YYYYMMDDHH24MI')
    ,p_end_time => 1262635154
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306230916','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '696E7365727420696E746F206C6F63286C6F632C6C6F635F64657363290D0A73656C656374206C6576656C2B3130302C207472616E736C6174652864626D735F72616E646F6D2E737472696E67282761272C203230292C202761626358595A272C206C65';
wwv_flow_imp.g_varchar2_table(2) := '76656C292066726F6D206475616C20636F6E6E656374206279206C6576656C203C3D20313030303B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30626677194122968397,
    p_flow_id => 4500,
    p_name => '30626677194122968397/INSERT_LOC',
    p_pathid => null,
    p_filename => 'INSERT_LOC',
    p_title => 'INSERT_LOC',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306210933','YYYYMMDDHH24MI'),
    p_updated_by => '',
    p_updated_on => to_date('','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30626677955468968399
    ,p_file_id => 30626677194122968397
    ,p_stmt_number => 2
    ,p_src_line_number => 2
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30626677832596968399
    ,p_file_id => 30626677194122968397
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 32
    ,p_length => 108
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'select level+100, translate(dbms_random.string(''a'', 20), ''abcXYZ'', level) from dual connect by level <= 1000'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30626677703322968398
    ,p_file_id => 30626677194122968397
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 30
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'insert into loc(loc,loc_desc) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30626678411327968781,
    p_file_id => 30626677194122968397,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210933','YYYYMMDDHH24MI'),
    p_start_time => 1245968782,
    p_ended => to_date('202306210933','YYYYMMDDHH24MI'),
    p_end_time => 1245968811,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30626678506474968782
    ,p_result_id => 30626678411327968781
    ,p_file_id => 30626677194122968397
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'insert into loc(loc,loc_desc) select level+100, translate(dbms_random.string(''a'', 20), ''abcXYZ'', level) from dual connect by level <= 1000'
    ,p_result_size => 0
    ,p_result_rows => 1000
    ,p_msg => '1000 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210933','YYYYMMDDHH24MI')
    ,p_start_time => 1245968782
    ,p_ended => to_date('202306210933','YYYYMMDDHH24MI')
    ,p_end_time => 1245968810
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210933','YYYYMMDDHH24MI'));
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '494E5345525420494E544F20555345525F444550542028757365725F69642C2064657074290D0A53454C45435420274252534D415254494E53272C20646570742046524F4D206974656D0D0A47524F555020425920646570743B';
end;
/
begin
  wwv_imp_workspace.create_script (
    p_id => 30629659918094505209,
    p_flow_id => 4500,
    p_name => '30629659918094505209/INSERT_USER_DEPT',
    p_pathid => null,
    p_filename => 'INSERT_USER_DEPT',
    p_title => 'INSERT_USER_DEPT',
    p_mime_type => 'text/plain',
    p_dad_charset => '',
    p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_created_on => to_date('202306210941','YYYYMMDDHH24MI'),
    p_updated_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_updated_on => to_date('202306210942','YYYYMMDDHH24MI'),
    p_deleted_as_of => to_date('000101010000','YYYYMMDDHH24MI'),
    p_content_type => 'BLOB',
    p_blob_content => wwv_flow_imp.g_varchar2_table,
    p_language => '',
    p_description => '',
    p_file_type => 'SCRIPT',
    p_file_charset => 'utf-8');
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30630034835094510055
    ,p_file_id => 30629659918094505209
    ,p_stmt_number => 2
    ,p_src_line_number => 3
    ,p_offset => -1
    ,p_length => 1
    ,p_stmt_class => 4
    ,p_stmt_id => 80
    ,p_isrunnable => 'N'
    ,p_stmt_vc2 => ';'
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30630034580340510055
    ,p_file_id => 30629659918094505209
    ,p_stmt_number => 1
    ,p_src_line_number => 1
    ,p_offset => 1
    ,p_length => 38
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'INSERT INTO USER_DEPT (user_id, dept) '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30630034613201510055
    ,p_file_id => 30629659918094505209
    ,p_stmt_number => 1
    ,p_src_line_number => 2
    ,p_offset => 40
    ,p_length => 36
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'SELECT ''BRSMARTINS'', dept FROM item '
);
end;
/
begin
  wwv_imp_workspace.create_sw_stmts (
    p_id => 30630034775088510055
    ,p_file_id => 30629659918094505209
    ,p_stmt_number => 1
    ,p_src_line_number => 3
    ,p_offset => 77
    ,p_length => 13
    ,p_stmt_class => 2
    ,p_stmt_id => 48
    ,p_isrunnable => 'Y'
    ,p_stmt_vc2 => 'GROUP BY dept'
);
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30629662275861505536,
    p_file_id => 30629659918094505209,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210941','YYYYMMDDHH24MI'),
    p_start_time => 1245505538,
    p_ended => to_date('202306210941','YYYYMMDDHH24MI'),
    p_end_time => 1245505570,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30629662354580505538
    ,p_result_id => 30629662275861505536
    ,p_file_id => 30629659918094505209
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'INSERT INTO USER_DEPT (user_id, dept) SELECT ''BRSMARTINS'', dept FROM item'
    ,p_result_size => null
    ,p_result_rows => null
    ,p_msg => 'ORA-00001: unique constraint (WKSP_BRSMARTINS.PK_USER_DEPT) violated'||wwv_flow.LF||
'ORA-06512: at "SYS.DBMS_SQL", line 1721'
    ,p_success => 'N'
    ,p_failure => 'Y'
    ,p_started => to_date('202306210941','YYYYMMDDHH24MI')
    ,p_start_time => 1245505538
    ,p_ended => to_date('202306210941','YYYYMMDDHH24MI')
    ,p_end_time => 1245505570
    ,p_run_complete => 'N'
    ,p_last_updated => to_date('202306210941','YYYYMMDDHH24MI'));
end;
/
begin
  wwv_imp_workspace.create_sw_results (
    p_id => 30630039370537510441,
    p_file_id => 30629659918094505209,
    p_job_id => null,
    p_run_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_run_as => 'WKSP_BRSMARTINS',
    p_started => to_date('202306210942','YYYYMMDDHH24MI'),
    p_start_time => 1245510442,
    p_ended => to_date('202306210942','YYYYMMDDHH24MI'),
    p_end_time => 1245510443,
    p_status => 'COMPLETE',
    p_run_comments => '');
end;
/
begin
  wwv_imp_workspace.create_sw_detail_results (
    p_id => 30630039492080510442
    ,p_result_id => 30630039370537510441
    ,p_file_id => 30629659918094505209
    ,p_seq_id => 1
    ,p_stmt_num => 1
 ,p_stmt_text => 
'INSERT INTO USER_DEPT (user_id, dept) SELECT ''BRSMARTINS'', dept FROM item GROUP BY dept'
    ,p_result_size => 0
    ,p_result_rows => 100
    ,p_msg => '100 row(s) inserted.'
    ,p_success => 'Y'
    ,p_failure => 'N'
    ,p_started => to_date('202306210942','YYYYMMDDHH24MI')
    ,p_start_time => 1245510442
    ,p_ended => to_date('202306210942','YYYYMMDDHH24MI')
    ,p_end_time => 1245510443
    ,p_run_complete => 'Y'
    ,p_last_updated => to_date('202306210942','YYYYMMDDHH24MI'));
end;
/
----------------
--sql commands
--
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30169591363596476339
 ,p_command => 
'show user;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306200958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30169628724305962673
 ,p_command => 
'show user'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306200958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30169975019426965681
 ,p_command => 
'alter user hr quota 200g on users;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306200958','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30170730662123983894
 ,p_command => 
'select item, loc, dept, (DBMS_RANDOM.value(5000,50000)), round(DBMS_RANDOM.value(1000,100000))'||wwv_flow.LF||
'from item, loc;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201001','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30173858746832992421
 ,p_command => 
'select item, loc, dept, trunc((DBMS_RANDOM.value(5000,50000)),2), round(DBMS_RANDOM.value(1000,100000))'||wwv_flow.LF||
'from item, loc;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201002','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30179814158005079112
 ,p_command => 
'select * from item'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30180213183292081133
 ,p_command => 
'select * from loc'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201017','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30180258310214084363
 ,p_command => 
'select * from item'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201018','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30183685127485646383
 ,p_command => 
'select item, loc, dept, (DBMS_RANDOM.value(5000,50000)), round(DBMS_RANDOM.value(1000,100000))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201026','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30183820332526135902
 ,p_command => 
'select item, loc, dept, (DBMS_RANDOM.value(5000,50000)), round(DBMS_RANDOM.value(1000,100000)) from item, loc;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201026','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30186897146182695612
 ,p_command => 
'show user'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201034','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30202000931389390652
 ,p_command => 
'select (BYTES / 1024 ),  (MAX_BYTES / 1024 ), tablespace_name from USER_TS_QUOTAS;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201109','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30202053700229398223
 ,p_command => 
'alter user brsmartins quota 5M on APEX_BIGFILE_INSTANCE_TBS5;'||wwv_flow.LF||
'--select (BYTES / 1024 ),  (MAX_BYTES / 1024 ), tablespace_name from USER_TS_QUOTAS;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201110','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30202181529013414936
 ,p_command => 
'alter user brsmartins quota unlimited on APEX_BIGFILE_INSTANCE_TBS5;'||wwv_flow.LF||
'--select (BYTES / 1024 ),  (MAX_BYTES / 1024 ), tablespace_name from USER_TS_QUOTAS;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201113','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30203160157819424551
 ,p_command => 
'alter user brsmartins quota 20M on APEX_BIGFILE_INSTANCE_TBS5;'||wwv_flow.LF||
'--select (BYTES / 1024 ),  (MAX_BYTES / 1024 ), tablespace_name from USER_TS_QUOTAS;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201114','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30203209997038430603
 ,p_command => 
'alter user brsmartins quota 20M on APEX_BIGFILE_INSTANCE_TBS5'||wwv_flow.LF||
'--select (BYTES / 1024 ),  (MAX_BYTES / 1024 ), tablespace_name from USER_TS_QUOTAS;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201115','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30294729766142637132
 ,p_command => 
'SELECT file_name'||wwv_flow.LF||
'FROM dba_data_files'||wwv_flow.LF||
'WHERE tablespace_name = ''APEX_BIGFILE_INSTANCE_TBS5'';'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30295075253863638627
 ,p_command => 
'SELECT file_name'||wwv_flow.LF||
'FROM user_data_files'||wwv_flow.LF||
'WHERE tablespace_name = ''APEX_BIGFILE_INSTANCE_TBS5'';'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30295373354100640087
 ,p_command => 
'SELECT file_name'||wwv_flow.LF||
'FROM all_data_files'||wwv_flow.LF||
'WHERE tablespace_name = ''APEX_BIGFILE_INSTANCE_TBS5'';'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30295400065495641606
 ,p_command => 
'select * from dba_source'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30295430826290643029
 ,p_command => 
'select * from user_source'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30312644404616415824
 ,p_command => 
'select * from loc'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306201521','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30610354073839225493
 ,p_command => 
'SELECT tablespace_name, file_name, bytes / 1024 / 1024 AS size_mb, '||wwv_flow.LF||
'       (bytes - free_bytes) / 1024 / 1024 AS used_mb,'||wwv_flow.LF||
'       free_bytes / 1024 / 1024 AS free_mb,'||wwv_flow.LF||
'       round(((bytes - free_bytes) / bytes) * 100, 2) AS used_percent'||wwv_flow.LF||
'FROM dba_data_files'||wwv_flow.LF||
'WHERE tablespace_name = ''APEX_BIGFILE_INSTANCE_TBS5'';'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30611121758041741693
 ,p_command => 
'SHOW TABLESPACE APEX_BIGFILE_INSTANCE_TBS5;'||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210855','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30615135166890818428
 ,p_command => 
'select * from  dba_segments'||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210908','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30615320720927304008
 ,p_command => 
'select * from  dba_segments'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210908','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30624351418112429139
 ,p_command => 
'drop table item'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30624443780555942829
 ,p_command => 
'drop table loc'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30624487822348943897
 ,p_command => 
'drop table item_loc_soh'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210929','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30625891083577450348
 ,p_command => 
'SELECT * FROM ITEM'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210932','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30625949389474457298
 ,p_command => 
'SELECT * FROM ITEM;'||wwv_flow.LF||
'SELECT * FROM LOC;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30625958560429457933
 ,p_command => 
'SELECT * FROM LOC;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210933','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30630234983991027073
 ,p_command => 
'SELECT * FROM USER_DEPT;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210943','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30636022451348088176
 ,p_command => 
'SELECT * FROM ITEM_LOC_SOH;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210953','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30636030373444088959
 ,p_command => 
'SELECT * FROM ITEM;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210953','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30636037934545090116
 ,p_command => 
'SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210953','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30636392533315599640
 ,p_command => 
'EXPLAIN PLAN FOR'||wwv_flow.LF||
'  SELECT * FROM ITEM e;'||wwv_flow.LF||
'SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30637198116711111011
 ,p_command => 
''||wwv_flow.LF||
'EXPLAIN PLAN FOR'||wwv_flow.LF||
'  SELECT * FROM ITEM e;'||wwv_flow.LF||
'SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY);'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306210957','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30638897502193129358
 ,p_command => 
'SELECT * FROM TABLE (DBMS_XPLAN.DISPLAY);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639034600570615885
 ,p_command => 
'EXPLAIN PLAN FOR'||wwv_flow.LF||
'  SELECT * FROM ITEM e;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639175011520625251
 ,p_command => 
'SELECT * FROM ITEM;'||wwv_flow.LF||
'SELECT * FROM LOC;'||wwv_flow.LF||
'SELECT * FROM USER_DEPT;'||wwv_flow.LF||
'SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR);'||wwv_flow.LF||
''||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211001','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639185081815625766
 ,p_command => 
'SELECT * FROM ITEM;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211001','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639434081091131973
 ,p_command => 
'SELECT * FROM ITEM e;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211000','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639920210992629411
 ,p_command => 
'SELECT * FROM ITEM WHERE ITEM = 237;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211002','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30639934332254631853
 ,p_command => 
'SELECT * FROM ITEM WHERE ITEM = ''237'';'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211002','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30640857180290637365
 ,p_command => 
'SELECT * FROM ITEM_LOC_SOH;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211003','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30646555356349697445
 ,p_command => 
'select * from ITEM_LOC_SOH where LOC = 652 AND DEPT = 68;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211013','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30651684105418741559
 ,p_command => 
'DELETE FROM HTMLDB_PLAN_TABLE WHERE PLAN_ID NOT IN (1212827);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30651817565578252739
 ,p_command => 
'DELETE FROM HTMLDB_PLAN_TABLE WHERE PLAIN_ID NOT IN (1212827);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211020','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30651826486969253846
 ,p_command => 
'select * from ITEM_LOC_SOH where LOC = 652 AND DEPT = 68;'||wwv_flow.LF||
'DELETE FROM HTMLDB_PLAN_TABLE WHERE PLAN_ID NOT IN (1212827);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211021','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30657286942359330939
 ,p_command => 
'select * from ITEM_LOC_SOH where LOC = 652 AND DEPT = 68;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211033','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30661237394045356235
 ,p_command => 
'select * from ITEM_LOC_SOH'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211038','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30726688031017752767
 ,p_command => 
'select item, loc, dept--, (DBMS_RANDOM.value(5000,50000)), round(DBMS_RANDOM.value(1000,100000))'||wwv_flow.LF||
'from item, loc;'||wwv_flow.LF||
'--select * from ITEM_LOC_SOH where LOC = 652 AND DEPT = 68;'||wwv_flow.LF||
'--DELETE FROM HTMLDB_PLAN_TABLE WHERE PLAN_ID NOT IN (1212827);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211309','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30726784040941753267
 ,p_command => 
'select item, loc, dept--, (DBMS_RANDOM.value(5000,50000)), round(DBMS_RANDOM.value(1000,100000))'||wwv_flow.LF||
'from item, loc;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211309','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30728826746973803409
 ,p_command => 
'commit;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211318','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30729345996486327233
 ,p_command => 
'SELECT COUNT(*) FROM ITEM_LOC_SOH;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211319','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30734145403776393237
 ,p_command => 
'select * from item order by dept, item;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211330','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30735368150588885964
 ,p_command => 
'select item, dept, count(*)'||wwv_flow.LF||
' from item '||wwv_flow.LF||
'group by item, dept'||wwv_flow.LF||
'having count(*) > 1;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211331','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30735476696593886544
 ,p_command => 
'select item, dept, count(*)'||wwv_flow.LF||
' from item '||wwv_flow.LF||
'group by item, dept'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211331','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30736979147349902536
 ,p_command => 
'select item, dept'||wwv_flow.LF||
' from item a'||wwv_flow.LF||
' where 1 = (select count(dept) from item b where b.item = a.item)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211334','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30737200699604413374
 ,p_command => 
'select item, dept'||wwv_flow.LF||
' from item a'||wwv_flow.LF||
' where 1 > (select count(dept) from item b where b.item = a.item)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211334','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30737476803997905990
 ,p_command => 
'select item, dept'||wwv_flow.LF||
' from item a'||wwv_flow.LF||
'order by dept'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211335','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30767398494797765302
 ,p_command => 
'select max(item) from item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211432','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30767605680470766832
 ,p_command => 
'select max(item) from item;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211433','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769113119833311154
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh pck_stock_app.t_soh_cost;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(1).item          := i.tem;'||wwv_flow.LF||
'    l_t_soh(1).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(1).dept          := i.dept;'||wwv_flow.LF||
'    l_t_soh(1).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(1).stock_on_hand := i.'||
'stock_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211442','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769114557403312787
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh pck_stock_app.t_soh_cost;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(1).item          := i.item;'||wwv_flow.LF||
'    l_t_soh(1).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(1).dept          := i.dept;'||wwv_flow.LF||
'    l_t_soh(1).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(1).stock_on_hand := i'||
'.stock_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211443','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769128119617315536
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh pck_stock_app.t_soh_cost;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(1).item          := i.item;'||wwv_flow.LF||
'    l_t_soh(1).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(1).dept          := i.dept;'||wwv_flow.LF||
'    l_t_soh(1).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(1).stock_on_hand := i'||
'.stock_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  --PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'  --                            O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211443','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769361596168833159
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh pck_stock_app.t_soh;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(1).item          := i.item;'||wwv_flow.LF||
'    l_t_soh(1).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(1).dept          := i.dept;'||wwv_flow.LF||
'    l_t_soh(1).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(1).stock_on_hand := i.stoc'||
'k_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211444','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769856942122331353
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh pck_stock_app.t_soh;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
'  l_count NUMBER := 0;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_count := l_count + 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(l_count).item          := i.item;'||wwv_flow.LF||
'    l_t_soh(l_count).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(l_count).dept          := i.dept;'||wwv_flow.LF||
'    l_t_soh(l'||
'_count).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(l_count).stock_on_hand := i.stock_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211446','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30769918138235339936
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_t_soh     pck_stock_app.t_soh;'||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
'  l_count     NUMBER := 0;'||wwv_flow.LF||
''||wwv_flow.LF||
'  CURSOR C_ITEM_LOC_SOH IS'||wwv_flow.LF||
'    SELECT *'||wwv_flow.LF||
'      FROM item_loc_soh'||wwv_flow.LF||
'     WHERE item = 1345;'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  FOR i IN c_item_loc_soh LOOP'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_count := l_count + 1;'||wwv_flow.LF||
''||wwv_flow.LF||
'    l_t_soh(l_count).item          := i.item;'||wwv_flow.LF||
'    l_t_soh(l_count).loc           := i.loc;'||wwv_flow.LF||
'    l_t_soh(l_count).dept          := i.dept;'||wwv_flow.LF||
'    l'||
'_t_soh(l_count).unit_cost     := i.unit_cost;'||wwv_flow.LF||
'    l_t_soh(l_count).stock_on_hand := i.stock_on_hand;'||wwv_flow.LF||
''||wwv_flow.LF||
'  END LOOP;'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST (I_T_SOH     => l_t_soh,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211447','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30770466144834849750
 ,p_command => 
'DELETE FROM ITEM_LOC_SOH_COST_EXT;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211447','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30795286614252283887
 ,p_command => 
'DELETE FROM ITEM_LOC_SOH_COST_EXT;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211559','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30795650907275774858
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'   FROM item_loc_soh ils'||wwv_flow.LF||
'  WHERE ((878 IS NULL) OR (ils.loc = 878))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211600','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796023957472778981
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'   FROM item_loc_soh ils'||wwv_flow.LF||
'  WHERE ((NULL IS NULL) OR (ils.loc = NULL))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211600','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796290560227306170
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((878 IS NULL) OR (ils.loc = 878))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211603','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796314407321310172
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ils.loc = nvl(null,878)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211603','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796365956601315284
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ils.loc = nvl(878,null)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211604','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796367648172316753
 ,p_command => 
''||wwv_flow.LF||
' SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ils.loc = nvl(null,null)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211604','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 30796659830581809063
 ,p_command => 
' SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ils.loc = nvl(null,ils.loc)'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306211605','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31476871378868105981
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230909','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31476889810769107908
 ,p_command => 
'SELECT COUNT(*)'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL))'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230910','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31477797958948140236
 ,p_command => 
'delete from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31479162987912626476
 ,p_command => 
'delete from ite_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230915','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31479246127609146378
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL));'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230916','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31479326915638156415
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL));'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31479437931350640585
 ,p_command => 
''||wwv_flow.LF||
'delete from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230917','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31479630247624644521
 ,p_command => 
'SELECT count(*)'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL));'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230918','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31497198977696374267
 ,p_command => 
'select * from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31497799808639873613
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
' '||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
' '||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_V2 (I_LOC     => 133,'||wwv_flow.LF||
'                                 O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230956','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31497824487294376072
 ,p_command => 
'select * from item_loc_soh_ext_cost;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31497848158334377427
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230954','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31497866423264380541
 ,p_command => 
'select * from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230955','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31498834647829875165
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
' l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
' '||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_V2 (I_LOC     => 133,'||wwv_flow.LF||
'                                 O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230956','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31498836377351876165
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306230956','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31510433054331047573
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
' l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
' '||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_V3 (I_LOC     => 133,'||wwv_flow.LF||
'                                 O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231025','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31511278830280591785
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231030','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31512170634159081216
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
' l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
' '||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_V3 (I_LOC     => NULL,'||wwv_flow.LF||
'                                 O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231031','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31513651385181108280
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231035','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31513747267520114407
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_v2 (I_T_SOH     => null,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231036','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31513750905027115677
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_v2 (I_loc     => null,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231036','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31514363286182631695
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231037','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31514364742014632809
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_v3 (I_loc     => null,'||wwv_flow.LF||
'                              O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231037','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31517425499349670955
 ,p_command => 
'delete from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31517883774902156784
 ,p_command => 
'SELECT count(*)'||wwv_flow.LF||
'          FROM item_loc_soh ils'||wwv_flow.LF||
'         WHERE ((NULL IS NULL) OR (ils.loc = NULL));'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231043','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31521519375039755673
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_2.SET_SOH_COST (I_LOC    => l_loc,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31522039884471245658
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31522061308850246363
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_2.SET_SOH_COST (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231058','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526764938248357796
 ,p_command => 
'CREATE OR REPLACE TYPE t_item_loc_soh_list IS TABLE OF t_item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231117','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526804245174866561
 ,p_command => 
't_item_loc_soh_list'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526842993988869353
 ,p_command => 
'CREATE OR REPLACE TYPE t_item_loc_soh IS OBJECT ('||wwv_flow.LF||
'  item VARCHAR2(100),'||wwv_flow.LF||
'  loc NUMBER,'||wwv_flow.LF||
'  dept NUMBER,'||wwv_flow.LF||
'  unit_cost NUMBER,'||wwv_flow.LF||
'  stock_on_hand NUMBER'||wwv_flow.LF||
');'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231116','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526878674809880313
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => 65,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231118','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526880579523881120
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231118','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526902277395882074
 ,p_command => 
'select * from item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231119','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526918590495883943
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => 133,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231119','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526922789579884917
 ,p_command => 
'select * from item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231119','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31526976919051889456
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231120','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31528518821897373560
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, SQLERRM);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231119','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31528549023978379054
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => 133,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231120','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31528638299434896810
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231121','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31529890856271404808
 ,p_command => 
'delete from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231125','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31529960919768413604
 ,p_command => 
'select * from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231126','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31531733327486482804
 ,p_command => 
'select count(*) from item_loc_soh;         '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231138','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31531735938937484294
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_3.SET_SOH_COST (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231138','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31533364108410513161
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_v3 (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231143','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31555241461071620186
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP.SET_SOH_COST_v2 (I_LOC    => null,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231322','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31561415938688685807
 ,p_command => 
'CREATE OR REPLACE TYPE loc_type AS OBJECT ('||wwv_flow.LF||
'  loc NUMBER,'||wwv_flow.LF||
'  loc_desc VARCHAR2(100)'||wwv_flow.LF||
');'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231333','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31562357852961693610
 ,p_command => 
'DROP TYPE loc_type '
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231334','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31570393651341748517
 ,p_command => 
'select * from table(FUNC_GET_LOC);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231343','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31572731170813763506
 ,p_command => 
'create or replace TYPE loc_type2 AS OBJECT ( '||wwv_flow.LF||
'  loc_desc VARCHAR2(100), '||wwv_flow.LF||
'  loc      NUMBER '||wwv_flow.LF||
'); '||wwv_flow.LF||
'/'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31572749896269766415
 ,p_command => 
'create or replace TYPE loc_table_type2 AS TABLE OF loc_type2; '||wwv_flow.LF||
'/'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231346','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31573280350569250142
 ,p_command => 
'select * from table(FUNC_GET_LOC);'||wwv_flow.LF||
'create or replace TYPE loc_type2 AS OBJECT ( '||wwv_flow.LF||
'  loc_desc VARCHAR2(100), '||wwv_flow.LF||
'  loc      NUMBER '||wwv_flow.LF||
'); '||wwv_flow.LF||
'/'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231345','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31573748502617257001
 ,p_command => 
'select * from table(FUNC_GET_LOC);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231347','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574425260791775548
 ,p_command => 
'drop type loc_type2;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574443422340777733
 ,p_command => 
'drop type loc_table_type;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574447016092778801
 ,p_command => 
'drop type loc_type2;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574449414844779241
 ,p_command => 
'select * from table(FUNC_GET_LOC);'||wwv_flow.LF||
'create or replace TYPE loc_type2 AS OBJECT ( '||wwv_flow.LF||
'  loc_desc VARCHAR2(100), '||wwv_flow.LF||
'  loc      NUMBER '||wwv_flow.LF||
'); '||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'create or replace TYPE loc_table_type2 AS TABLE OF loc_type2; '||wwv_flow.LF||
'/'||wwv_flow.LF||
'drop type loc_type;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574457125978780104
 ,p_command => 
'drop type loc_type;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574618459135263880
 ,p_command => 
'drop type loc_table_type2;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31574621396741265456
 ,p_command => 
'select * from table(FUNC_GET_LOC);'||wwv_flow.LF||
'create or replace TYPE loc_type2 AS OBJECT ( '||wwv_flow.LF||
'  loc_desc VARCHAR2(100), '||wwv_flow.LF||
'  loc      NUMBER '||wwv_flow.LF||
'); '||wwv_flow.LF||
'/'||wwv_flow.LF||
''||wwv_flow.LF||
'create or replace TYPE loc_table_type2 AS TABLE OF loc_type2; '||wwv_flow.LF||
'/'||wwv_flow.LF||
'drop type loc_type2;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231348','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31575231010123273453
 ,p_command => 
'select * from table(FUNC_GET_LOC);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231349','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31580036564801867954
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_4.SET_SOH_COST (I_LOC    => 133,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31580041306727869288
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_4.SET_SOH_COST (I_LOC    => NULL,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231403','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31585680133592020689
 ,p_command => 
'select item, loc, count(dept) '||wwv_flow.LF||
' from item_loc_soh '||wwv_flow.LF||
'group by item, loc'||wwv_flow.LF||
'having count(dept) > 1;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231428','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31585761905405038596
 ,p_command => 
'alter table item_loc_soh modify CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept),'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231431','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31585787887818046752
 ,p_command => 
'ALTER TABLE item_loc_soh MODIFY (dept PRIMARY KEY);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231433','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31587137049160498680
 ,p_command => 
'select item, loc, dept, count(*) '||wwv_flow.LF||
' from item_loc_soh '||wwv_flow.LF||
'group by item, loc, dept;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231427','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31587224783197510742
 ,p_command => 
'select * from table(FUNC_GET_LOC);'||wwv_flow.LF||
'select item, loc, count(dept) '||wwv_flow.LF||
' from item_loc_soh '||wwv_flow.LF||
'group by item, loc'||wwv_flow.LF||
'having count(dept) = 0;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231429','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31587597223659512782
 ,p_command => 
'select item, loc, count(dept) '||wwv_flow.LF||
' from item_loc_soh '||wwv_flow.LF||
'group by item, loc'||wwv_flow.LF||
'having count(dept) = 1;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231429','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31588223379183526470
 ,p_command => 
'alter table item_loc_soh modify CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231431','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31588275945203541126
 ,p_command => 
'alter table item_loc_soh modify CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'||wwv_flow.LF||
'ALTER TABLE item_loc_soh MODIFY (dept PRIMARY KEY);'||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31588987355641542292
 ,p_command => 
'ALTER TABLE item_loc_soh DISABLE CONSTRAINT pk_item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231434','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31588995911466545294
 ,p_command => 
'ALTER TABLE item_loc_soh'||wwv_flow.LF||
'MODIFY CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231435','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31589047829824558726
 ,p_command => 
'ALTER TABLE tabela DROP CONSTRAINT pk_item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31589049893615560029
 ,p_command => 
'ALTER TABLE item_loc_soh ADD CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31589160108857568138
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_4.SET_SOH_COST_v2 (I_LOC    => NULL,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231438','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31589464892634067209
 ,p_command => 
'ALTER TABLE item_loc_soh ADD CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231436','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31589488541632072531
 ,p_command => 
'ALTER TABLE item_loc_soh DROP CONSTRAINT pk_item_loc_soh;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231437','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31590397358113589387
 ,p_command => 
'ALTER TABLE item_loc_soh_cost_ext DROP CONSTRAINT pk_item_loc_soh_cost_ext;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231442','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31590401678171591296
 ,p_command => 
'ALTER TABLE item_loc_soh_cost_ext ADD CONSTRAINT pk_item_loc_soh PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231442','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31590466754361592995
 ,p_command => 
'ALTER TABLE item_loc_soh_cost_ext ADD CONSTRAINT pk_item_loc_soh_cost_ext PRIMARY KEY (item, loc, dept);'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231443','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31590486833389595128
 ,p_command => 
'DECLARE'||wwv_flow.LF||
''||wwv_flow.LF||
'  l_error_msg VARCHAR2(500);'||wwv_flow.LF||
''||wwv_flow.LF||
'BEGIN'||wwv_flow.LF||
''||wwv_flow.LF||
'  PCK_STOCK_APP_4.SET_SOH_COST_v2 (I_LOC    => NULL,'||wwv_flow.LF||
'                                O_ERROR_MSG => l_error_msg);'||wwv_flow.LF||
''||wwv_flow.LF||
'  IF l_error_msg IS NOT NULL THEN'||wwv_flow.LF||
'    RAISE_APPLICATION_ERROR (-20001, l_error_msg);                            '||wwv_flow.LF||
'  END IF;'||wwv_flow.LF||
''||wwv_flow.LF||
'END;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231443','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31607736949027083613
 ,p_command => 
'delete from HTMLDB_PLAN_TABLE;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231604','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31608176978969580609
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'  FROM item_loc_soh ils'||wwv_flow.LF||
' WHERE loc = 652 '||wwv_flow.LF||
'   AND dept = 68;'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231602','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31608247636135597137
 ,p_command => 
'SELECT *'||wwv_flow.LF||
'  FROM item_loc_soh ils'||wwv_flow.LF||
' WHERE loc = 652 '||wwv_flow.LF||
'   AND dept = 68;'||wwv_flow.LF||
''
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231604','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31609674703503653518
 ,p_command => 
'drop package body "WKSP_BRSMARTINS"."PCK_STOCK_APP_2";'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231614','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
begin
  wwv_imp_workspace.create_sw_sql_cmds (
    p_id => 31610321915462141413
 ,p_command => 
'drop package body "WKSP_BRSMARTINS"."PCK_STOCK_APP_4";'
    ,p_created_by => 'BRUNO.SOUSA.MARTINS@GMAIL.COM'
    ,p_created_on => to_date('202306231614','YYYYMMDDHH24MI')
    ,p_parsed_schema => 'WKSP_BRSMARTINS');
end;
/
----------------
--Quick SQL saved models
--
----------------
--user access log
--
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306230850','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log1$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225246,
    p_owner => 'WKSP_BRSMARTINS',
    p_access_date => to_date('202306231328','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306200900','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRSMARTINS',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306201431','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306201431','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 5,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306201431','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306201453','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Internal Authentication',
    p_app => 4500,
    p_owner => 'APEX_230100',
    p_access_date => to_date('202306210822','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225246,
    p_owner => 'WKSP_BRSMARTINS',
    p_access_date => to_date('202306201509','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.2',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 4,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRSMARTINS',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225246,
    p_owner => 'WKSP_BRSMARTINS',
    p_access_date => to_date('202306201509','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 1,
    p_custom_status_text => 'Invalid Login Credentials');
end;
/
begin
  wwv_imp_workspace.create_user_access_log2$ (
    p_login_name => 'BRUNO.SOUSA.MARTINS@GMAIL.COM',
    p_auth_method => 'Oracle APEX Accounts',
    p_app => 225246,
    p_owner => 'WKSP_BRSMARTINS',
    p_access_date => to_date('202306201509','YYYYMMDDHH24MI'),
    p_ip_address => '100.114.32.4',
    p_remote_user => 'APEX_PUBLIC_USER',
    p_auth_result => 0,
    p_custom_status_text => '');
end;
/
prompt Check Compatibility...
begin
-- This date identifies the minimum version required to import this file.
wwv_flow_team_api.check_version(p_version_yyyy_mm_dd=>'2010.05.13');
end;
/
 
begin wwv_flow.g_import_in_progress := true; wwv_flow.g_user := USER; end; 
/
 
--
prompt ...feedback
--
begin
null;
end;
/
--
prompt ...Issue Templates
--
begin
null;
end;
/
--
prompt ...Issue Email Prefs
--
begin
null;
end;
/
--
prompt ...Label Groups
--
begin
null;
end;
/
--
prompt ...Labels
--
begin
null;
end;
/
--
prompt ... Milestones
--
begin
null;
end;
/
--
prompt ... Issues
--
begin
null;
end;
/
--
prompt ... Issue Attachments
--
begin
null;
end;
/
--
prompt ... Issues Milestones
--
begin
null;
end;
/
--
prompt ... Issues Labels
--
begin
null;
end;
/
--
prompt ... Issues stakeholders
--
begin
null;
end;
/
--
prompt ... Issues Comments
--
begin
null;
end;
/
--
prompt ... Issues Events
--
begin
null;
end;
/
--
prompt ... Issues Notifications
--
begin
null;
end;
/
 
prompt ...workspace objects
 
 
prompt ...RESTful Services
 
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_BRSMARTINS';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_BRSMARTINS - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_230100
-- Exported 16:20 Friday June 23, 2023 by: BRUNO.SOUSA.MARTINS@GMAIL.COM
--
-- SET SCHEMA
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_schema   := 'WKSP_BRSMARTINS_2';
   wwv_flow_hint.check_schema_privs;
 
end;
/

 
--------------------------------------------------------------------
prompt  SCHEMA WKSP_BRSMARTINS_2 - User Interface Defaults, Table Defaults
--
-- Import using sqlplus as the Oracle user: APEX_230100
-- Exported 16:20 Friday June 23, 2023 by: BRUNO.SOUSA.MARTINS@GMAIL.COM
--
 
--------------------------------------------------------------------
prompt User Interface Defaults, Attribute Dictionary
--
-- Exported 16:20 Friday June 23, 2023 by: BRUNO.SOUSA.MARTINS@GMAIL.COM
--
-- SHOW EXPORTING WORKSPACE
 
begin
 
   wwv_flow_imp.g_id_offset := 0;
   wwv_flow_hint.g_exp_workspace := 'BRSMARTINS';
 
end;
/

begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
