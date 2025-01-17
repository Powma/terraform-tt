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

# Shared Resources
variable "shared_hosted_zone_name" {
  type        = string
  default     = "shared.mydomain.com"
  description = "The name of the hosted zone where we set the record of the shared subdomains"
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
