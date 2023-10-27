variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.2.0.0/16"
}

variable "cidr_subnet1" {
  description = "CIDR block for the subnet1"
  default     = "10.2.1.0/24"
}

variable "availability_zone_a" {
  description = "availability zone to create subnet1"
  default     = "us-east-1a"
}

variable "cidr_subnet2" {
  description = "CIDR block for the subnet2"
  default     = "10.2.2.0/24"
}

variable "availability_zone_b" {
  description = "availability zone to create subnet1"
  default     = "us-east-1b"
}

variable "cidr_subnet_private1" {
  description = "CIDR block for the subnet2"
  default     = "10.2.11.0/24"
}

variable "cidr_subnet_private2" {
  description = "CIDR block for the subnet2"
  default     = "10.2.12.0/24"
}

variable "trabalho-fiap-tc3" {
  description = "trabalho-fiap-tech-challange3"
  default     = "trabalho-fiap-tech-challange3"
}


variable "cluster_name" {
  default = "trabalho-fiap-tech-challange3"
}

#variable "kubernetes_version" {}