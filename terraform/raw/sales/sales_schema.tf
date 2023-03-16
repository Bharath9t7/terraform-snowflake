resource "snowflake_schema" "sales_schema" {
  database     = var.target_db_name
  name         = "sales"
  is_transient = false
}

output "sales_schema_op" {
  value = snowflake_schema.sales_schema.name
}