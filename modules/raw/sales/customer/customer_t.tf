resource "snowflake_table" "demo" {
  database = var.target_db_name
  schema   = var.target_schema_name
  name     = "CUSTOMER"

  column {
    name = "ID"
    type = "NUMBER(38,0)"
  }

  column {
    name = "CUSTOMER_NAME"
    type = "VARCHAR(20)"
  }
}