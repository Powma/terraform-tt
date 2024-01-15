module "alb" {
  source = "./modules/alb"

  vpn_instance_ip               = var.vpn_instance_ip
  vpn_subdomain                 = var.vpn_subdomain
  gitlab_instance_ip            = var.gitlab_instance_ip
  subnet_shared_cidr_0          = var.subnet_shared_cidr_0
  subnet_shared_cidr_1          = var.subnet_shared_cidr_1
  subnet_shared_cidr_2          = var.subnet_shared_cidr_2
  vpn_hosted_zone_name          = var.vpn_hosted_zone_name
  gitlab_hosted_zone_name       = var.gitlab_hosted_zone_name
  certificate_arn               = aws_acm_certificate_validation.shared.certificate_arn
  vpn_https_target_group_arn    = aws_lb_target_group.vpn_https.arn
  vpn_certificate_arn           = aws_acm_certificate_validation.vpn.certificate_arn
  gitlab_certificate_arn        = aws_acm_certificate_validation.gitlab.certificate_arn
  gitlab_https_target_group_arn = aws_lb_target_group.gitlab_https.arn

}
