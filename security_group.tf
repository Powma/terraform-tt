resource "aws_security_group" "alb" {
  name        = "Private ALB - Security Group"
  description = "General rules for ALB Interconnexion"
  vpc_id      = data.aws_vpc.shared.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["${var.vpn_instance_ip}/32", "${var.gitlab_instance_ip}/32"]
    description = "Allow HTTP traffic from VPN and Gitlab instances"
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${var.vpn_instance_ip}/32", "${var.gitlab_instance_ip}/32"]
    description = "Allow HTTPS traffic from VPN and Gitlab instances"
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = [var.subnet_shared_cidr_0, var.subnet_shared_cidr_1, var.subnet_shared_cidr_2]
    description = "Allow HTTP traffic from specific subnets"
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.subnet_shared_cidr_0, var.subnet_shared_cidr_1, var.subnet_shared_cidr_2]
    description = "Allow HTTPS traffic from specific subnets"
  }

  tags = {
    Name = "Private ALB - Security Group"
  }
}
