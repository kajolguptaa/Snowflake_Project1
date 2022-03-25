create or replace pipe sf_project1.itr_rds_landing1.superstore_pipe1 auto_ingest=true as 
    copy into sf_project1.itr_rds_landing1.superstore
    from @sf_project1.itr_rds_landing1.superstore_stage1;
    
show pipes;


alter pipe sf_project1.itr_rds_landing1.superstore_pipe1 refresh;


--shows the status of pipe
select SYSTEM$PIPE_STATUS('superstore_pipe1');