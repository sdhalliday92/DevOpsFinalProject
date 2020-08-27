output "DevOpsVPC" {
  value = aws_vpc.vpc.vpc_id
}


output "subnet_a_id" {
  value = aws_subnet.subnet_a.id
}

output "subnet_b_id" {
  value = aws_subnet.subnet_b.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
}