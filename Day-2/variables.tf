variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "env" {
  type        = string
  description = "Environment name like dev, test, prod"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "subnet_cidr" {
  type        = string
  description = "CIDR block for the subnet (must be inside vpc_cidr)"
}