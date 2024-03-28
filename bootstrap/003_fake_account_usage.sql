
-- This file is about creating fake versions of our base activity tables so that the rest of our views/objects can be pre-initialized.
-- When the app is given access to the real tables, these views will be replaced by ones that point to the real underlying snowflake tables.
CREATE VIEW ACCOUNT_USAGE.QUERY_HISTORY IF NOT EXISTS AS SELECT
  null::TEXT as "QUERY_ID" ,
 null::TEXT as "QUERY_TEXT" ,
 null::NUMBER as "DATABASE_ID" ,
 null::TEXT as "DATABASE_NAME" ,
 null::NUMBER as "SCHEMA_ID" ,
 null::TEXT as "SCHEMA_NAME" ,
 null::TEXT as "QUERY_TYPE" ,
 null::NUMBER as "SESSION_ID" ,
 null::TEXT as "USER_NAME" ,
 null::TEXT as "ROLE_NAME" ,
 null::NUMBER as "WAREHOUSE_ID" ,
 null::TEXT as "WAREHOUSE_NAME" ,
 null::TEXT as "WAREHOUSE_SIZE" ,
 null::TEXT as "WAREHOUSE_TYPE" ,
 null::NUMBER as "CLUSTER_NUMBER" ,
 null::TEXT as "QUERY_TAG" ,
 null::TEXT as "EXECUTION_STATUS" ,
 null::TEXT as "ERROR_CODE" ,
 null::TEXT as "ERROR_MESSAGE" ,
 null::TIMESTAMP_LTZ as "START_TIME" ,
 null::TIMESTAMP_LTZ as "END_TIME" ,
 null::NUMBER as "TOTAL_ELAPSED_TIME" ,
 null::NUMBER as "BYTES_SCANNED" ,
 null::FLOAT as "PERCENTAGE_SCANNED_FROM_CACHE" ,
 null::NUMBER as "BYTES_WRITTEN" ,
 null::NUMBER as "BYTES_WRITTEN_TO_RESULT" ,
 null::NUMBER as "BYTES_READ_FROM_RESULT" ,
 null::NUMBER as "ROWS_PRODUCED" ,
 null::NUMBER as "ROWS_INSERTED" ,
 null::NUMBER as "ROWS_UPDATED" ,
 null::NUMBER as "ROWS_DELETED" ,
 null::NUMBER as "ROWS_UNLOADED" ,
 null::NUMBER as "BYTES_DELETED" ,
 null::NUMBER as "PARTITIONS_SCANNED" ,
 null::NUMBER as "PARTITIONS_TOTAL" ,
 null::NUMBER as "BYTES_SPILLED_TO_LOCAL_STORAGE" ,
 null::NUMBER as "BYTES_SPILLED_TO_REMOTE_STORAGE" ,
 null::NUMBER as "BYTES_SENT_OVER_THE_NETWORK" ,
 null::NUMBER as "COMPILATION_TIME" ,
 null::NUMBER as "EXECUTION_TIME" ,
 null::NUMBER as "QUEUED_PROVISIONING_TIME" ,
 null::NUMBER as "QUEUED_REPAIR_TIME" ,
 null::NUMBER as "QUEUED_OVERLOAD_TIME" ,
 null::NUMBER as "TRANSACTION_BLOCKED_TIME" ,
 null::TEXT as "OUTBOUND_DATA_TRANSFER_CLOUD" ,
 null::TEXT as "OUTBOUND_DATA_TRANSFER_REGION" ,
 null::NUMBER as "OUTBOUND_DATA_TRANSFER_BYTES" ,
 null::TEXT as "INBOUND_DATA_TRANSFER_CLOUD" ,
 null::TEXT as "INBOUND_DATA_TRANSFER_REGION" ,
 null::NUMBER as "INBOUND_DATA_TRANSFER_BYTES" ,
 null::NUMBER as "LIST_EXTERNAL_FILES_TIME" ,
 null::FLOAT as "CREDITS_USED_CLOUD_SERVICES" ,
 null::TEXT as "RELEASE_VERSION" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_INVOCATIONS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_SENT_ROWS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_RECEIVED_ROWS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_SENT_BYTES" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_RECEIVED_BYTES" ,
 null::NUMBER as "QUERY_LOAD_PERCENT" ,
 null::BOOLEAN as "IS_CLIENT_GENERATED_STATEMENT" ,
 null::NUMBER as "QUERY_ACCELERATION_BYTES_SCANNED" ,
 null::NUMBER as "QUERY_ACCELERATION_PARTITIONS_SCANNED" ,
 null::NUMBER as "QUERY_ACCELERATION_UPPER_LIMIT_SCALE_FACTOR" ,
 null::NUMBER as "TRANSACTION_ID" ,
 null::NUMBER as "CHILD_QUERIES_WAIT_TIME" ,
 null::TEXT as "ROLE_TYPE",
 null::TEXT as "QUERY_HASH",
 null::NUMBER as "QUERY_HASH_VERSION",
 null::TEXT as "QUERY_PARAMETERIZED_HASH",
 null::NUMBER as "QUERY_PARAMETERIZED_HASH_VERSION"
;

CREATE VIEW ACCOUNT_USAGE.WAREHOUSE_LOAD_HISTORY IF NOT EXISTS AS SELECT
 null::TIMESTAMP_LTZ as "START_TIME" ,
 null::TIMESTAMP_LTZ as "END_TIME" ,
 null::NUMBER as "WAREHOUSE_ID" ,
 null::TEXT as "WAREHOUSE_NAME" ,
 null::NUMBER as "AVG_RUNNING" ,
 null::NUMBER as "AVG_QUEUED_LOAD" ,
 null::NUMBER as "AVG_QUEUED_PROVISIONING" ,
 null::NUMBER as "AVG_BLOCKED"
;

-- Create warehouse events history
CREATE VIEW ACCOUNT_USAGE.WAREHOUSE_EVENTS_HISTORY IF NOT EXISTS AS SELECT
 null::TIMESTAMP_LTZ as "TIMESTAMP" ,
 null::NUMBER as "WAREHOUSE_ID" ,
 null::TEXT as "WAREHOUSE_NAME" ,
 null::NUMBER as "CLUSTER_NUMBER" ,
 null::TEXT as "EVENT_NAME" ,
 null::TEXT as "EVENT_REASON" ,
 null::TEXT as "EVENT_STATE" ,
 null::TEXT as "USER_NAME" ,
 null::TEXT as "ROLE_NAME" ,
 null::TEXT as "QUERY_ID"
;

-- Create warehouse metering history
CREATE VIEW ACCOUNT_USAGE.WAREHOUSE_METERING_HISTORY IF NOT EXISTS AS SELECT
 null::TIMESTAMP_LTZ as "START_TIME" ,
 null::TIMESTAMP_LTZ as "END_TIME" ,
 null::NUMBER as "WAREHOUSE_ID" ,
 null::TEXT as "WAREHOUSE_NAME" ,
 null::NUMBER as "CREDITS_USED" ,
 null::NUMBER as "CREDITS_USED_COMPUTE" ,
 null::NUMBER as "CREDITS_USED_CLOUD_SERVICES"
;

CREATE VIEW INTERNAL.DUMMY_QUERY_HISTORY_UDTF IF NOT EXISTS AS SELECT
 null::TEXT as "QUERY_ID" ,
 null::TEXT as "QUERY_TEXT" ,
 null::TEXT as "DATABASE_NAME" ,
 null::TEXT as "SCHEMA_NAME" ,
 null::TEXT as "QUERY_TYPE" ,
 null::NUMBER as "SESSION_ID" ,
 null::TEXT as "USER_NAME" ,
 null::TEXT as "ROLE_NAME" ,
 null::TEXT as "WAREHOUSE_NAME" ,
 null::TEXT as "WAREHOUSE_SIZE" ,
 null::TEXT as "WAREHOUSE_TYPE" ,
 null::NUMBER as "CLUSTER_NUMBER" ,
 null::TEXT as "QUERY_TAG" ,
 null::TEXT as "EXECUTION_STATUS" ,
 null::NUMBER as "ERROR_CODE" ,
 null::TEXT as "ERROR_MESSAGE" ,
 null::TIMESTAMP_LTZ as "START_TIME" ,
 null::TIMESTAMP_LTZ as "END_TIME" ,
 null::NUMBER as "TOTAL_ELAPSED_TIME" ,
 null::NUMBER as "BYTES_SCANNED" ,
 null::NUMBER as "ROWS_PRODUCED" ,
 null::NUMBER as "COMPILATION_TIME" ,
 null::NUMBER as "EXECUTION_TIME" ,
 null::NUMBER as "QUEUED_PROVISIONING_TIME" ,
 null::NUMBER as "QUEUED_REPAIR_TIME" ,
 null::NUMBER as "QUEUED_OVERLOAD_TIME" ,
 null::NUMBER as "TRANSACTION_BLOCKED_TIME" ,
 null::TEXT as "OUTBOUND_DATA_TRANSFER_CLOUD" ,
 null::TEXT as "OUTBOUND_DATA_TRANSFER_REGION" ,
 null::NUMBER as "OUTBOUND_DATA_TRANSFER_BYTES" ,
 null::TEXT as "INBOUND_DATA_TRANSFER_CLOUD" ,
 null::TEXT as "INBOUND_DATA_TRANSFER_REGION" ,
 null::NUMBER as "INBOUND_DATA_TRANSFER_BYTES" ,
 null::NUMBER as "CREDITS_USED_CLOUD_SERVICES" ,
 null::NUMBER as "LIST_EXTERNAL_FILE_TIME" ,
 null::TEXT as "RELEASE_VERSION" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_INVOCATIONS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_SENT_ROWS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_RECEIVED_ROWS" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_SENT_BYTES" ,
 null::NUMBER as "EXTERNAL_FUNCTION_TOTAL_RECEIVED_BYTES" ,
 null::BOOLEAN as "IS_CLIENT_GENERATED_STATEMENT"
;

CREATE VIEW ACCOUNT_USAGE.USERS IF NOT EXISTS AS SELECT
 null::NUMBER as "USER_ID" ,
 null::TEXT as "NAME" ,
 null::TIMESTAMP_LTZ as "CREATED_ON" ,
 null::TIMESTAMP_LTZ as "DELETED_ON" ,
 null::TEXT as "LOGIN_NAME" ,
 null::TEXT as "DISPLAY_NAME" ,
 null::TEXT as "FIRST_NAME" ,
 null::TEXT as "LAST_NAME" ,
 null::TEXT as "EMAIL" ,
 null::BOOLEAN as "MUST_CHANGE_PASSWORD" ,
 null::BOOLEAN as "HAS_PASSWORD" ,
 null::TEXT as "COMMENT" ,
 null::VARIANT as "DISABLED" ,
 null::VARIANT as "SNOWFLAKE_LOCK" ,
 null::TEXT as "DEFAULT_WAREHOUSE" ,
 null::TEXT as "DEFAULT_NAMESPACE" ,
 null::TEXT as "DEFAULT_ROLE" ,
 null::VARIANT as "EXT_AUTHN_DUO" ,
 null::TEXT as "EXT_AUTHN_UID" ,
 null::TIMESTAMP_LTZ as "BYPASS_MFA_UNTIL" ,
 null::TIMESTAMP_LTZ as "LAST_SUCCESS_LOGIN" ,
 null::TIMESTAMP_LTZ as "EXPIRES_AT" ,
 null::TIMESTAMP_LTZ as "LOCKED_UNTIL_TIME" ,
 null::BOOLEAN as "HAS_RSA_PUBLIC_KEY" ,
 null::TIMESTAMP_LTZ as "PASSWORD_LAST_SET_TIME" ,
 null::TEXT as "OWNER" ,
 null::TEXT as "DEFAULT_SECONDARY_ROLE"
;

CREATE VIEW ACCOUNT_USAGE.SERVERLESS_TASK_HISTORY IF NOT EXISTS AS SELECT
 null::TIMESTAMP_LTZ as "START_TIME" ,
 null::TIMESTAMP_LTZ as "END_TIME" ,
 null::NUMBER as "CREDITS_USED" ,
 null::NUMBER as "TASK_ID" ,
 null::TEXT as "TASK_NAME" ,
 null::NUMBER as "SCHEMA_ID" ,
 null::TEXT as "SCHEMA_NAME" ,
 null::NUMBER as "DATABASE_ID" ,
 null::TEXT as "DATABASE_NAME"
;

CREATE VIEW ACCOUNT_USAGE.TASK_HISTORY IF NOT EXISTS AS SELECT
null::TEXT as "NAME",
null::TEXT as "QUERY_TEXT",
null::TEXT as "CONDITION_TEXT",
null::TEXT as "SCHEMA_NAME",
null::NUMBER as "TASK_SCHEMA_ID",
null::TEXT as "DATABASE_NAME",
null::NUMBER as "TASK_DATABASE_ID",
null::TIMESTAMP_LTZ as "SCHEDULED_TIME",
null::TIMESTAMP_LTZ as "COMPLETED_TIME",
null::TEXT as "STATE",
null::TEXT as "RETURN_VALUE",
null::TEXT as "QUERY_ID",
null::TIMESTAMP_LTZ as "QUERY_START_TIME",
null::NUMBER as "ERROR_CODE",
null::TEXT as "ERROR_MESSAGE",
null::NUMBER as "GRAPH_VERSION",
null::NUMBER as "RUN_ID",
null::TEXT as "ROOT_TASK_ID",
null::TEXT as "SCHEDULED_FROM",
null::NUMBER as "ATTEMP_NUMBER",
null::NUMBER as "INSTANCE_ID",
null::TEXT as "CONFIG",
null::TEXT as "QUERY_HASH",
null::NUMBER as "QUERY_HASH_VERSION",
null::TEXT as "QUERY_PARAMETERIZED_HASH",
null::NUMBER as "QUERY_PARAMETERIZED_HASH_VERSION",
null::NUMBER as "GRAPH_RUN_GROUP_ID",
null::OBJECT as "BACKFILL_INFO"
;

CREATE VIEW ACCOUNT_USAGE.SESSIONS IF NOT EXISTS AS SELECT
null::NUMBER as "SESSION_ID",
null::TIMESTAMP_LTZ as "CREATED_ON",
null::TEXT as "USER_NAME",
null::TEXT as "AUTHENTICATION_METHOD",
null::NUMBER as "LOGIN_EVENT_ID",
null::TEXT as "CLIENT_APPLICATION_VERSION",
null::TEXT as "CLIENT_APPLICATION_ID",
null::TEXT as "CLIENT_ENVIRONMENT",
null::TEXT as "CLIENT_BUILD_ID",
null::TEXT as "CLIENT_VERSION",
null::TEXT as "CLOSED_REASON"
;
