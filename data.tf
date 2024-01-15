data "aws_elb_service_account" "current" {}

data "aws_vpc" "shared" {
  id = "vpc-123456789"
}

data "aws_route53_zone" "gitlab" {
  name = var.gitlab_hosted_zone_name
}

data "aws_route53_zone" "vpn" {
  name = var.vpn_hosted_zone_name
}

data "aws_route53_zone" "shared" {
  name = var.shared_hosted_zone_name
}
