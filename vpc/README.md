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
| cloud\_nat\_ipaddr\_count | The count of external ip address to assign to the cloud-nat object | `number` | `1` | no |
| enable\_cloud\_nat | Setup Cloud NAT gateway for common VPC | `bool` | `false` | no |
| enable\_flow\_logs | The flow log | `string` | n/a | yes |
| nat\_ip\_allocate\_option | AUTO\_ONLY or MANUAL\_ONLY | `string` | `"AUTO_ONLY"` | no |
| net\_name | the name of the network in gcp | `string` | n/a | yes |
| region | The main region for deployment | `string` | n/a | yes |
| subnet\_name | This is the name for the subnetwork in gcp | `string` | n/a | yes |
| subnet\_pods | The secondary CIDR for kubernetes pods | `string` | n/a | yes |
| subnet\_range | CIDR for subnetwork nodes this is the main range | `string` | n/a | yes |
| subnet\_services | The secondary CIDR for kubernetes services | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| gke\_pod | The name of the pod |
| gke\_service | the name of the service |
| net\_link | The network link |
| net\_router\_link | The network router link |
| subnet | This is the common link |
| subnet\_link | The subnetwork link |
| subnet\_range | The subnet ranges |
| subnetwork\_pods | The name of subnet for kubernetes pods |

