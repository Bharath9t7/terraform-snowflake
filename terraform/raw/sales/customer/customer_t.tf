resource "snowflake_table" "demo" {
  database = var.target_db_name
  schema   = var.target_schema_name
  name     = "customer"

  column {
    name = "ID"
    type = "NUMBER(38,0)"
  }

  column {
    name = "customer_name"
    type = "VARCHAR(20)"
  }
}