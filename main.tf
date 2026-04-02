terraform {
  cloud {
    organization = "My_Devops_Test"

    workspaces {
      name = "gh-actions-demo"
    }
  }

  required_providers {
    snowflake = {
      source  = "snowflake-labs/snowflake"
      version = "~> 1.0"
    }
  }
}

provider "snowflake" {}

resource "snowflake_database" "demo_db" {
  name    = "DEMO_DB"
  comment = "Database for Snowflake Terraform demo"
}
