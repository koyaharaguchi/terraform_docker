terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.21.0"
    }
  }

  required_version = "1.2.4"
}

provider "aws" {
  region = "ap-northeast-1"
}