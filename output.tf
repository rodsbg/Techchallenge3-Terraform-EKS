output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "private_subnet_1a" {
  value = aws_subnet.subnet_private1.id
}

output "private_subnet_1b" {
  value = aws_subnet.subnet_private2.id
}
