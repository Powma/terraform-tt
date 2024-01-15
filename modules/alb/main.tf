resource "aws_lb" "main" {
  name               = "PrivateALB"
  internal           = true
  load_balancer_type = "application"
  security_groups    = [aws_security_group.alb.id]
  subnets            = [data.aws_subnet.private_networking_1.id, data.aws_subnet.private_networking_2.id, data.aws_subnet.private_networking_3.id]

  drop_invalid_header_fields = true

  enable_deletion_protection = true

  tags = {
    Name = "PrivateALB"
  }

}

