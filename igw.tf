resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}" 
  }
}
