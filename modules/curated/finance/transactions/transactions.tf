resource "snowflake_table" "transactions" {
  database = var.target_db_name
  schema   = var.target_schema_name
  name     = "TRANSACTIONS"

  column {
    name = "transaction_id"
    type = "NUMBER(38,0)"
  }

  column {
    name = "transaction_amount"
    type = "NUMBER(38,0)"
  }

  column {
    name = "transaction_time"
    type = "TIMESTAMP_NTZ(9)"
  }
}