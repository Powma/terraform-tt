resource "aws_route53_record" "vpn" {
  zone_id = data.aws_route53_zone.vpn.zone_id
  name    = "${var.vpn_subdomain}${data.aws_route53_zone.vpn.name}"
  type    = "A"

  alias {
    name                   = module.alb.alb_dns_name
    zone_id                = module.alb.alb_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "gitlab" {
  zone_id = data.aws_route53_zone.gitlab.zone_id
  name    = data.aws_route53_zone.gitlab.name
  type    = "A"

  alias {
    name                   = module.alb.alb_dns_name
    zone_id                = module.alb.alb_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "shared" {
  zone_id = data.aws_route53_zone.shared.zone_id
  name    = data.aws_route53_zone.shared.name
  type    = "A"

  alias {
    name                   = module.alb.alb_dns_name
    zone_id                = module.alb.alb_zone_id
    evaluate_target_health = true
  }
}
