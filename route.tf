resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}-public" 
  }
}
