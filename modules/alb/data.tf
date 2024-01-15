data "aws_vpc" "shared" {
  id = "vpc-123456789"
}

data "aws_subnet" "private_networking_1" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.shared.id]
  }
  filter {
    name   = "cidr-block"
    values = [cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 0)]
  }
}
data "aws_subnet" "private_networking_2" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.shared.id]
  }
  filter {
    name   = "cidr-block"
    values = [cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 1)]
  }
}
data "aws_subnet" "private_networking_3" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.shared.id]
  }
  filter {
    name   = "cidr-block"
    values = [cidrsubnet(data.aws_vpc.shared.cidr_block, 8, 2)]
  }
}
