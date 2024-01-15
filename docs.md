## Requirements

| Name                                                   | Version |
| ------------------------------------------------------ | ------- |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | 4.14.0  |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | 4.14.0  |

## Modules

| Name                                         | Source        | Version |
| -------------------------------------------- | ------------- | ------- |
| <a name="module_alb"></a> [alb](#module_alb) | ./modules/alb | n/a     |

## Resources

| Name                                                                                                                                                  | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_acm_certificate.gitlab](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate)                             | resource    |
| [aws_acm_certificate.shared](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate)                             | resource    |
| [aws_acm_certificate.vpn](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate)                                | resource    |
| [aws_acm_certificate_validation.gitlab](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate_validation)       | resource    |
| [aws_acm_certificate_validation.shared](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate_validation)       | resource    |
| [aws_acm_certificate_validation.vpn](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/acm_certificate_validation)          | resource    |
| [aws_lb_target_group.gitlab_https](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/lb_target_group)                       | resource    |
| [aws_lb_target_group.vpn_https](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/lb_target_group)                          | resource    |
| [aws_lb_target_group_attachment.gitlab_https](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/lb_target_group_attachment) | resource    |
| [aws_lb_target_group_attachment.vpn_https](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/lb_target_group_attachment)    | resource    |
| [aws_route53_record.gitlab](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)                               | resource    |
| [aws_route53_record.gitlab_certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)        | resource    |
| [aws_route53_record.shared](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)                               | resource    |
| [aws_route53_record.shared_certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)        | resource    |
| [aws_route53_record.vpn](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)                                  | resource    |
| [aws_route53_record.vpn_certificate_validation](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/resources/route53_record)           | resource    |
| [aws_elb_service_account.current](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/data-sources/elb_service_account)                 | data source |
| [aws_route53_zone.gitlab](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/data-sources/route53_zone)                                | data source |
| [aws_route53_zone.shared](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/data-sources/route53_zone)                                | data source |
| [aws_route53_zone.vpn](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/data-sources/route53_zone)                                   | data source |
| [aws_vpc.shared](https://registry.terraform.io/providers/hashicorp/aws/4.14.0/docs/data-sources/vpc)                                                  | data source |

## Inputs

| Name                                                                                                   | Description                                                                  | Type     | Default                 | Required |
| ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------- | -------- | ----------------------- | :------: |
| <a name="input_gitlab_hosted_zone_name"></a> [gitlab_hosted_zone_name](#input_gitlab_hosted_zone_name) | The name of the hosted zone where we set the record of the gitlab domain     | `string` | `"gitlab.mydomain.com"` |    no    |
| <a name="input_gitlab_instance_ip"></a> [gitlab_instance_ip](#input_gitlab_instance_ip)                | The IP of the Gitlab instance                                                | `string` | n/a                     |   yes    |
| <a name="input_shared_hosted_zone_name"></a> [shared_hosted_zone_name](#input_shared_hosted_zone_name) | The name of the hosted zone where we set the record of the shared subdomains | `string` | `"shared.mydomain.com"` |    no    |
| <a name="input_subnet_shared_cidr_0"></a> [subnet_shared_cidr_0](#input_subnet_shared_cidr_0)          | CIDR block for subnet 0                                                      | `string` | n/a                     |   yes    |
| <a name="input_subnet_shared_cidr_1"></a> [subnet_shared_cidr_1](#input_subnet_shared_cidr_1)          | CIDR block for subnet 1                                                      | `string` | n/a                     |   yes    |
| <a name="input_subnet_shared_cidr_2"></a> [subnet_shared_cidr_2](#input_subnet_shared_cidr_2)          | CIDR block for subnet 2                                                      | `string` | n/a                     |   yes    |
| <a name="input_vpn_hosted_zone_name"></a> [vpn_hosted_zone_name](#input_vpn_hosted_zone_name)          | The name of the hosted zone where we set the record of the vpn subdomain     | `string` | n/a                     |   yes    |
| <a name="input_vpn_instance_ip"></a> [vpn_instance_ip](#input_vpn_instance_ip)                         | The IP of the vpn instance                                                   | `string` | n/a                     |   yes    |
| <a name="input_vpn_subdomain"></a> [vpn_subdomain](#input_vpn_subdomain)                               | The sub domain name of the vpn that is use to access the vpn admin dashboard | `string` | n/a                     |   yes    |

## Outputs

| Name                                                                                            | Description |
| ----------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_subnet_shared_cidr_0"></a> [subnet_shared_cidr_0](#output_subnet_shared_cidr_0) | n/a         |
| <a name="output_subnet_shared_cidr_1"></a> [subnet_shared_cidr_1](#output_subnet_shared_cidr_1) | n/a         |
| <a name="output_subnet_shared_cidr_2"></a> [subnet_shared_cidr_2](#output_subnet_shared_cidr_2) | n/a         |
