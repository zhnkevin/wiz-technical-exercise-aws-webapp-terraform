terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-940482447333-us-west-2-an"
    key = "wiz-technical-exercise/terraform.tfstate"
    region = "us-west-2"
    profile = "Wiz"
    use_lockfile = true
  }

  required_version = ">=1.14.0"
}

provider "aws" {
  region = "us-west-2"
  profile = "Wiz"

  default_tags {
  tags = {
    env = "prod"
    owner = "kevin-zheng"
    project = "wiz-technical-exercise"
    }
  }
}