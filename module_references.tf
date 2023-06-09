module "raw" {
  source     = "./modules/raw"
  target_env = var.env
}

module "curated" {
  source     = "./modules/curated"
  target_env = var.env
}

module "raw_sales" {
  source         = "./modules/raw/sales"
  target_db_name = module.raw.db_raw_op
  target_env     = var.env
}

module "curated_finance" {
  source         = "./modules/curated/finance"
  target_db_name = module.curated.db_curated_op
  target_env     = var.env
}

module "raw_sales_customer" {
  source             = "./modules/raw/sales/customer"
  target_db_name     = module.raw.db_raw_op
  target_schema_name = module.raw_sales.sales_schema_op
  target_env         = var.env
}

module "curated_finance_transactions" {
  source             = "./modules/curated/finance/transactions"
  target_db_name     = module.curated.db_curated_op
  target_schema_name = module.curated_finance.finance_schema_op
  target_env         = var.env
}