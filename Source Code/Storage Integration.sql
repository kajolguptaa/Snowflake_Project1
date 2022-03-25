select * from superstore;

create or replace storage integration superstore_int
    type = external_stage
    storage_provider = s3
    enabled = true
    storage_aws_role_arn = 'arn:aws:iam::700674097429:role/flatbucket4_policy_role'
    storage_allowed_locations = ('s3://flatbucket4/');
    
DESC INTEGRATION superstore_int;