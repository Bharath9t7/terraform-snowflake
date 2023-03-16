resource "snowflake_database" "db_raw" {
  name    = format("%s_%s", "DB_RAW", var.target_env)
  comment = "RAW data storage layer"
}

output "db_raw_op" {
  value = snowflake_database.db_raw.name
}