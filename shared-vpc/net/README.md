## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |
| google | >=3.5.0 |

## Providers

| Name | Version |
|------|---------|
| google | >=3.5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| net\_name | the name of the network | `string` | n/a | yes |
| region | region to use | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| region | The region in which the network exists |
| shared\_vpc | the link |

