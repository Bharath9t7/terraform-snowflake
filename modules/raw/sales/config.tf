terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.56.3"
    }
  }

  backend "remote" {
    organization = "puma-mac"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}