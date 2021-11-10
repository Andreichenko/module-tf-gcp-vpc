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
| cloud\_nat\_ipaddr\_count | the count of external ip address to assign to the cloud-nat object | `number` | `1` | no |
| enable\_cloud\_nat | Setup Cloud NAT gateway for common VPC | `bool` | `false` | no |
| enable\_flow\_logs | n/a | `any` | n/a | yes |
| nat\_ip\_allocate\_option | AUTO\_ONLY or MANUAL\_ONLY | `string` | `"AUTO_ONLY"` | no |
| net\_name | the name of the network in gcp | `any` | n/a | yes |
| region | The main region for deployment | `any` | n/a | yes |
| subnet\_name | This is the name for the subnetwork in gcp | `any` | n/a | yes |
| subnet\_pods | The secondary CIDR for kubernetes pods | `any` | n/a | yes |
| subnet\_range | CIDR for subnetwork nodes this is the main range | `any` | n/a | yes |
| subnet\_services | The secondary CIDR for kubernetes services | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| gke\_pod | n/a |
| gke\_service | n/a |
| net\_link | n/a |
| net\_router\_link | n/a |
| subnet | n/a |
| subnet\_link | n/a |
| subnet\_range | n/a |
| subnetwork\_pods | n/a |

