terraform {
  backend "s3" {
    bucket = "eurock-terraform"        # my-s3-bucket
    key    = "emarket/terraform.tfstate"
    region = "us-west-2"      # us-east-1, us-west-2 
  }
  required_version = ">=1.1.3"
}

provider "aws" {
  region = var.aws_region
}
