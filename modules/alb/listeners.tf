resource "aws_lb_listener" "https" {
  load_balancer_arn = aws_lb.main.arn
  port              = "443"
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  certificate_arn   = var.certificate_arn

  default_action {
    type             = "forward"
    target_group_arn = var.vpn_https_target_group_arn
  }
}

### VPN
resource "aws_lb_listener_certificate" "vpn" {
  listener_arn    = aws_lb_listener.https.arn
  certificate_arn = var.vpn_certificate_arn
}

resource "aws_lb_listener_rule" "vpn" {
  listener_arn = aws_lb_listener.https.arn
  priority     = 100

  action {
    type             = "forward"
    target_group_arn = var.vpn_https_target_group_arn
  }

  condition {
    host_header {
      values = ["${var.vpn_subdomain}${var.vpn_hosted_zone_name}"]
    }
  }
}

### GITLAB
resource "aws_lb_listener_certificate" "gitlab" {
  listener_arn    = aws_lb_listener.https.arn
  certificate_arn = var.gitlab_certificate_arn
}

resource "aws_lb_listener_rule" "gitlab" {
  listener_arn = aws_lb_listener.https.arn
  priority     = 110

  action {
    type             = "forward"
    target_group_arn = var.gitlab_https_target_group_arn
  }

  condition {
    host_header {
      values = [var.gitlab_hosted_zone_name]
    }
  }
}
