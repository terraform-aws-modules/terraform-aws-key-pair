# AWS Key Pair Terraform module

Terraform module which creates EC2 key pair on AWS.

[![SWUbanner](https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/banner2-direct.svg)](https://github.com/vshymanskyy/StandWithUkraine/blob/main/docs/README.md)

## Usage

### EC2 Key pair w/ module created key material

```hcl
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name           = "deployer-one"
  create_private_key = true
}
```

### EC2 Key pair w/ externally created public key material

```hcl
resource "tls_private_key" "this" {
  algorithm = "RSA"
}

module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "deployer-two"
  public_key = trimspace(tls_private_key.this.public_key_openssh)
}
```

### EC2 Key pair w/ existing public key material

```hcl
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "deployer-three"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}
```

## Conditional creation

Sometimes you need to have a way to create key pair conditionally but Terraform does not allow to use `count` inside `module` block, so the solution is to specify argument `create_key_pair`.

```hcl
# This EC2 key pair will not be created
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  create = false
  # ... omitted
}
```

## Examples:

- [Complete](https://github.com/terraform-aws-modules/terraform-aws-key-pair/tree/master/examples/complete) - Create EC2 key pair

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.21 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.21 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 3.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Determines whether resources will be created (affects all resources) | `bool` | `true` | no |
| <a name="input_create_private_key"></a> [create\_private\_key](#input\_create\_private\_key) | Determines whether a private key will be created | `bool` | `false` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair. Conflicts with `key_name_prefix` | `string` | `null` | no |
| <a name="input_key_name_prefix"></a> [key\_name\_prefix](#input\_key\_name\_prefix) | Creates a unique name beginning with the specified prefix. Conflicts with `key_name` | `string` | `null` | no |
| <a name="input_private_key_algorithm"></a> [private\_key\_algorithm](#input\_private\_key\_algorithm) | Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519` | `string` | `"RSA"` | no |
| <a name="input_private_key_rsa_bits"></a> [private\_key\_rsa\_bits](#input\_private\_key\_rsa\_bits) | When algorithm is `RSA`, the size of the generated RSA key, in bits (default: `4096`) | `number` | `4096` | no |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | The public key material | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair_arn"></a> [key\_pair\_arn](#output\_key\_pair\_arn) | The key pair ARN |
| <a name="output_key_pair_fingerprint"></a> [key\_pair\_fingerprint](#output\_key\_pair\_fingerprint) | The MD5 public key fingerprint as specified in section 4 of RFC 4716 |
| <a name="output_key_pair_id"></a> [key\_pair\_id](#output\_key\_pair\_id) | The key pair ID |
| <a name="output_key_pair_name"></a> [key\_pair\_name](#output\_key\_pair\_name) | The key pair name |
| <a name="output_private_key_id"></a> [private\_key\_id](#output\_private\_key\_id) | Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource |
| <a name="output_private_key_openssh"></a> [private\_key\_openssh](#output\_private\_key\_openssh) | Private key data in OpenSSH PEM (RFC 4716) format |
| <a name="output_private_key_pem"></a> [private\_key\_pem](#output\_private\_key\_pem) | Private key data in PEM (RFC 1421) format |
| <a name="output_public_key_fingerprint_md5"></a> [public\_key\_fingerprint\_md5](#output\_public\_key\_fingerprint\_md5) | The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations |
| <a name="output_public_key_fingerprint_sha256"></a> [public\_key\_fingerprint\_sha256](#output\_public\_key\_fingerprint\_sha256) | The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations |
| <a name="output_public_key_openssh"></a> [public\_key\_openssh](#output\_public\_key\_openssh) | The public key data in "Authorized Keys" format. This is populated only if the configured private key is supported: this includes all `RSA` and `ED25519` keys |
| <a name="output_public_key_pem"></a> [public\_key\_pem](#output\_public\_key\_pem) | Public key data in PEM (RFC 1421) format |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module is maintained by [Anton Babenko](https://github.com/antonbabenko) with help from [these awesome contributors](https://github.com/terraform-aws-modules/terraform-aws-key-pair/graphs/contributors).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/terraform-aws-modules/terraform-aws-key-pair/tree/master/LICENSE) for full details.
