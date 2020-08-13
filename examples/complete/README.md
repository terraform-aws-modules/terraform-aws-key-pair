# AWS EC2 key pair

Configuration in this directory creates EC2 key pair

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| random | n/a |
| tls | n/a |

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| this\_key\_pair\_fingerprint | The MD5 public key fingerprint as specified in section 4 of RFC 4716. |
| this\_key\_pair\_key\_name | The key pair name. |
| this\_key\_pair\_key\_pair\_id | The key pair ID. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
