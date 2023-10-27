resource "aws_eip" "eks_eip" {
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}-eip-nat-gw" 
  }
}

resource "aws_nat_gateway" "eks_nat_gw" {
  allocation_id = aws_eip.eks_eip.id
  subnet_id     = aws_subnet.subnet_public1.id
  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}-nat-gw" 
  }
}

resource "aws_route_table" "eks_nat_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.eks_nat_gw.id
  }

  tags = {
    "Environment" = "${var.trabalho-fiap-tc3}"
     Name = "${var.trabalho-fiap-tc3}-private" 
  }
}
