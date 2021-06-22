module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "yasu789-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1b"]
  private_subnets = ["10.0.2.0/24"]
  public_subnets  = ["10.0.1.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
  
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
