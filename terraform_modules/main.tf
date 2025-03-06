
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.0"
    }
  }
}
provider "aws" {
    region = var.region
  
}
module "ec2_instance" {
  source        = "github.com/rajesssssh/terraform_source-code_rajesh//terraform_modules/ec2creation"
  region        = var.region
  instance_type = var.instance_type
}