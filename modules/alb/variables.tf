# VPN Configuration
variable "vpn_instance_ip" {
  type        = string
  description = "The IP of the vpn instance"
}

variable "vpn_subdomain" {
  type        = string
  description = "The sub domain name of the vpn that is use to access the vpn admin dashboard"
}

variable "vpn_hosted_zone_name" {
  type        = string
  description = "The name of the hosted zone where we set the record of the vpn subdomain"
}

# GitLab Configuration
variable "gitlab_instance_ip" {
  type        = string
  description = "The IP of the Gitlab instance"
}

variable "gitlab_hosted_zone_name" {
  type        = string
  default     = "gitlab.mydomain.com"
  description = "The name of the hosted zone where we set the record of the gitlab domain"
}

# Subnet Configuration
variable "subnet_shared_cidr_0" {
  description = "CIDR block for subnet 0"
  type        = string
}

variable "subnet_shared_cidr_1" {
  description = "CIDR block for subnet 1"
  type        = string
}

variable "subnet_shared_cidr_2" {
  description = "CIDR block for subnet 2"
  type        = string
}

# variable "vpc_id" {
#   description = "The VPC ID for the ALB security group"
#   type        = string
# }

variable "certificate_arn" {
  description = "The ARN of the ACM certificate"
  type        = string
}

variable "vpn_https_target_group_arn" {
  description = "The ARN of the VPN HTTPS target group"
  type        = string
}

variable "vpn_certificate_arn" {
  description = "The ARN of the VPN ACM certificate"
  type        = string
}

variable "gitlab_certificate_arn" {
  description = "The ARN of the GitLab ACM certificate"
  type        = string
}

variable "gitlab_https_target_group_arn" {
  description = "The ARN of the GitLab HTTPS target group"
  type        = string
}

