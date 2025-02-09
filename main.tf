terraform {
  required_version = "~> 1.10"

  backend "s3" {
    bucket  = "dataclouders-terraform-states"
    encrypt = true
    key     = "dataclouders-github.tfstate"
    region  = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.86.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
