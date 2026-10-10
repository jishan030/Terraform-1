output "vpc_id" {
  value = aws_vpc.dev.id
}

output "subnet_id" {
  value = aws_subnet.test.id
}