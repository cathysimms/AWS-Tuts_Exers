output "public_subnet_id" {
    value = aws_subnet.subnets["1"].id
}

output "private_subnet_id" {
    value = aws_subnet.subnets["2"].id
}