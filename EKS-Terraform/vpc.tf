resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
    Name = "${var.trabalho-fiap-tc3}"  
  }
}