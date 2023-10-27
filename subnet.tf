resource "aws_subnet" "subnet_public1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet1
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_a
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}

resource "aws_subnet" "subnet_public2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet2
  map_public_ip_on_launch = "true"
  availability_zone       = var.availability_zone_b
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}


resource "aws_subnet" "subnet_private1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet_private1
  availability_zone       = var.availability_zone_a
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}

resource "aws_subnet" "subnet_private2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet_private2
  availability_zone       = var.availability_zone_b
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}
