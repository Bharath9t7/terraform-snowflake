resource "snowflake_schema" "finance_schema" {
  database = var.target_db_name
  name     = "FINANCE"
}

output "finance_schema_op" {
  value = snowflake_schema.finance_schema.name
}