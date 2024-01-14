output "subnet_shared_cidr_0" {
  value = cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 0)
}

output "subnet_shared_cidr_1" {
  value = cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 1)
}

output "subnet_shared_cidr_2" {
  value = cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 2)
}
