resource "snowflake_database" "db_curated" {
  name    = format("%s_%s", "DB_CURATED", var.target_env)
  comment = "RAW data storage layer"
}

output "db_curated_op" {
  value = snowflake_database.db_curated.name
}