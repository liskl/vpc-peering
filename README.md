## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.20.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route.to_primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.to_secondary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_vpc_peering_connection.to_primary](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_peering_connection) | resource |
| [aws_route_tables.primary_vpc_route_tables](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route_tables) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_id"></a> [account\_id](#input\_account\_id) | The account ID | `string` | n/a | yes |
| <a name="input_auto_accept"></a> [auto\_accept](#input\_auto\_accept) | T/F value for auto accepting the connection | `bool` | `true` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | The Environment | `string` | n/a | yes |
| <a name="input_primary_vpc_cidr"></a> [primary\_vpc\_cidr](#input\_primary\_vpc\_cidr) | The cidr range for the primary vpc | `string` | n/a | yes |
| <a name="input_primary_vpc_id"></a> [primary\_vpc\_id](#input\_primary\_vpc\_id) | The ID of the VPC with which you are creating the VPC Peering Connection | `string` | n/a | yes |
| <a name="input_primary_vpc_name"></a> [primary\_vpc\_name](#input\_primary\_vpc\_name) | The name of the VPC with which you are creating the VPC Peering Connection | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region | `any` | n/a | yes |
| <a name="input_secondary_vpc_cidr"></a> [secondary\_vpc\_cidr](#input\_secondary\_vpc\_cidr) | The cidr range for the secondary vpc | `string` | n/a | yes |
| <a name="input_secondary_vpc_id"></a> [secondary\_vpc\_id](#input\_secondary\_vpc\_id) | The ID of the requester VPC | `string` | n/a | yes |
| <a name="input_secondary_vpc_name"></a> [secondary\_vpc\_name](#input\_secondary\_vpc\_name) | The name of the requester VPC | `string` | n/a | yes |
| <a name="input_secondary_vpc_route_tables"></a> [secondary\_vpc\_route\_tables](#input\_secondary\_vpc\_route\_tables) | A list of the secondary route tables to be peered | `list(string)` | n/a | yes |

## Outputs

No outputs.
