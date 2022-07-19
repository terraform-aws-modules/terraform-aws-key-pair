# AWS EC2 key pair

Configuration in this directory creates EC2 key pair

- One key pair with a module created private key (private/public key pair)
- One key pair with external provided public key material

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
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.21 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tls"></a> [tls](#provider\_tls) | >= 3.4 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_key_pair"></a> [key\_pair](#module\_key\_pair) | ../../ | n/a |
| <a name="module_key_pair_disabled"></a> [key\_pair\_disabled](#module\_key\_pair\_disabled) | ../../ | n/a |
| <a name="module_key_pair_external"></a> [key\_pair\_external](#module\_key\_pair\_external) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [tls_private_key.this](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_external_key_pair_arn"></a> [external\_key\_pair\_arn](#output\_external\_key\_pair\_arn) | The key pair ARN |
| <a name="output_external_key_pair_fingerprint"></a> [external\_key\_pair\_fingerprint](#output\_external\_key\_pair\_fingerprint) | The MD5 public key fingerprint as specified in section 4 of RFC 4716 |
| <a name="output_external_key_pair_id"></a> [external\_key\_pair\_id](#output\_external\_key\_pair\_id) | The key pair ID |
| <a name="output_external_key_pair_name"></a> [external\_key\_pair\_name](#output\_external\_key\_pair\_name) | The key pair name |
| <a name="output_external_private_key_id"></a> [external\_private\_key\_id](#output\_external\_private\_key\_id) | Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource |
| <a name="output_external_private_key_openssh"></a> [external\_private\_key\_openssh](#output\_external\_private\_key\_openssh) | Private key data in OpenSSH PEM (RFC 4716) format |
| <a name="output_external_private_key_pem"></a> [external\_private\_key\_pem](#output\_external\_private\_key\_pem) | Private key data in PEM (RFC 1421) format |
| <a name="output_external_public_key_fingerprint_md5"></a> [external\_public\_key\_fingerprint\_md5](#output\_external\_public\_key\_fingerprint\_md5) | The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations |
| <a name="output_external_public_key_fingerprint_sha256"></a> [external\_public\_key\_fingerprint\_sha256](#output\_external\_public\_key\_fingerprint\_sha256) | The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations |
| <a name="output_external_public_key_openssh"></a> [external\_public\_key\_openssh](#output\_external\_public\_key\_openssh) | The public key data in "Authorized Keys" format. This is populated only if the configured private key is supported: this includes all `RSA` and `ED25519` keys |
| <a name="output_external_public_key_pem"></a> [external\_public\_key\_pem](#output\_external\_public\_key\_pem) | Public key data in PEM (RFC 1421) format |
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
