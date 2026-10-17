terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "network" {
  source      = "./modules/network"
   name        = "practice"
  vpc_cidr    = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
}

module "network2" {
  source      = "./modules/network"
  name        = "practice2"
  vpc_cidr    = "10.1.0.0/16"
  subnet_cidr = "10.1.1.0/24"
}

module "security" {
  source = "./modules/security"
  vpc_id = module.network.vpc_id
  port   = 443
  
}

output "vpc_id" {
  value = module.network.vpc_id
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "sg_id" {
  value = module.security.sg_id
}

output "sg_name" {
  value = module.security.sg_name
}
