terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
# upload terraform.tfstate file; creat bucket first
  backend "s3" {
    bucket = "agnija-bucket-terraform2"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}

provider "aws" {
  region = "eu-central-1"
}
