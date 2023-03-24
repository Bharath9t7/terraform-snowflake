# file formats to load data from stages

resource "snowflake_file_format" "file_format_pipe" {
  database         = var.target_db_name
  schema           = var.target_schema_name
  name             = "SNOWFLAKE_LOAD_FF_PIPE"
  format_type      = "CSV"
  field_delimiter  = "|"
  compression      = "AUTO"
  record_delimiter = "\n"
  binary_format    = "UTF-8"
  skip_header      = "0"
  escape = "NONE"
  time_format = "AUTO"
  timestamp_format = "AUTO"
  date_format = "AUTO"
  encoding = "UTF8"
  escape_unenclosed_field = "NONE"
  field_optionally_enclosed_by = "NONE"
}

resource "snowflake_file_format" "file_format_comma" {
  database         = var.target_db_name
  schema           = var.target_schema_name
  name             = "SNOWFLAKE_LOAD_FF_COMMA"
  format_type      = "CSV"
  field_delimiter  = ","
  compression      = "AUTO"
  record_delimiter = "\n"
  binary_format    = "UTF-8"
  skip_header      = "0"
  escape = "NONE"
  time_format = "AUTO"
  timestamp_format = "AUTO"
  date_format = "AUTO"
  encoding = "UTF8"
  escape_unenclosed_field = "NONE"
  field_optionally_enclosed_by = "NONE"
}

resource "snowflake_file_format" "file_format_pipe2" {
  database         = var.target_db_name
  schema           = var.target_schema_name
  name             = "SNOWFLAKE_LOAD_FF_PIPE2"
  format_type      = "CSV"
  field_delimiter  = "|"
  compression      = "AUTO"
  record_delimiter = "\n"
  binary_format    = "UTF-8"
  skip_header      = "0"
  escape = "NONE"
  time_format = "AUTO"
  timestamp_format = "AUTO"
  date_format = "AUTO"
  encoding = "UTF8"
  escape_unenclosed_field = "NONE"
  field_optionally_enclosed_by = "NONE"
}

# resource "snowflake_file_format_grant" "file_format_ownership_grant_1" {
#   database_name     = var.target_db_name
#   schema_name       = var.target_schema_name
#   file_format_name  = snowflake_file_format.file_format_pipe.name
#   privilege         = "OWNERSHIP"
#   roles             = [format("%s-%s", "APP-RNDC-SF-SYSADMIN-FR", var.target_env)]
#   with_grant_option = false
# }

# resource "snowflake_file_format_grant" "file_format_ownership_grant_2" {
#   database_name     = var.target_db_name
#   schema_name       = var.target_schema_name
#   file_format_name  = snowflake_file_format.file_format_comma.name
#   privilege         = "OWNERSHIP"
#   roles             = [format("%s-%s", "APP-RNDC-SF-SYSADMIN-FR", var.target_env)]
#   with_grant_option = false
# }