create or replace stage sf_project1.itr_rds_landing1.superstore_stage1
    storage_integration = superstore_int
    url = 's3://flatbucket4'
    file_format = (type = csv field_delimiter=',' skip_header = 1 null_if = ('NULL','null') empty_field_as_null = true field_optionally_enclosed_by='"');    


list @sf_project1.itr_rds_landing1.superstore_stage1;