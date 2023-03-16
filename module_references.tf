module "terraform" {
  source = "./terraform"
}

module "raw" {
  source     = "./terraform/raw"
  target_env = "dev"
}

module "raw_sales" {
  source         = "./terraform/raw/sales"
  target_db_name = module.raw.db_raw_op
  target_env     = "dev"
}

module "raw_sales_customer" {
  source = "./terraform/raw/sales/customer"
  target_db_name = module.raw.db_raw_op
  target_schema_name = module.raw_sales.sales_schema_op
  target_env     = "dev"
}