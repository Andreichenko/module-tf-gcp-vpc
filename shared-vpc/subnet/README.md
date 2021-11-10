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
| enable\_flow\_logs | The flow logs | `any` | n/a | yes |
| region | The common region | `any` | n/a | yes |
| shared\_vpc | This is the self\_link of the shared vpc to create subnetwork in | `any` | n/a | yes |
| subnet\_name | The name for the subnetwork | `any` | n/a | yes |
| subnet\_pods | This is the secondary CIDR for pods | `any` | n/a | yes |
| subnet\_range | CIDR for subnet nodes | `any` | n/a | yes |
| subnet\_services | This is the secondary CIDR for services | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| gke\_pod | n/a |
| gke\_service | n/a |
| subnet | n/a |
| subnet\_pods | n/a |

