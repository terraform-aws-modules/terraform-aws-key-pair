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

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.46 |
| <a name="requirement_random"></a> [random](#requirement\_random) | >= 2.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | >= 2.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | ../../ |  |
| <a name="module_key_pair_external"></a> [key\_pair\_external](#module\_key\_pair\_external) | ../../ |  |

## Resources

| Name | Type |
|------|------|
| [random_pet.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_fingerprint"></a> [key\_pair\_fingerprint](#output\_key\_pair\_fingerprint) | The MD5 public key fingerprint as specified in section 4 of RFC 4716. |
| <a name="output_key_pair_key_name"></a> [key\_pair\_key\_name](#output\_key\_pair\_key\_name) | The key pair name. |
| <a name="output_key_pair_key_pair_id"></a> [key\_pair\_key\_pair\_id](#output\_key\_pair\_key\_pair\_id) | The key pair ID. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
