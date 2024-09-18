terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket         = "prajai-roboshop-dev"
    key            = "vpn"
    region         = "us-east-1"
    dynamodb_table = "prajai-roboshop-lock-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}
