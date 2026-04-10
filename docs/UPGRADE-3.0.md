# Upgrade from v2.x to v3.x

Please consult the `examples` directory for reference example configurations. If you find a bug, please open an issue with supporting configuration to reproduce.

## List of backwards incompatible changes

- Minimum supported version of the Terraform AWS provider is **6.0**. Earlier 6.x releases include the per-resource `region` argument on [`aws_key_pair`](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair); provider **5.x and below do not support that argument**, so this module can no longer declare compatibility with them.

## Additional changes

### Added

- Optional variable `region` to create the key pair in a specific AWS region while using a single `provider "aws"` configuration (see the root `README.md`).

### Modified

- None beyond the provider version requirement.

### Removed

- None

### Variable and output changes

1. Added variables:

   - `region`

2. Renamed variables:

   - None

3. Removed variables:

   - None

4. Output changes:

   - None

## Upgrade migrations

### Terraform AWS provider

Upgrade the AWS provider to v6 or newer in your root module (or parent stack), for example:

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.0"
    }
  }
}
```

Run `terraform init -upgrade` after changing version constraints.

### State moves

None required. Existing key pairs keep the same resource address (`aws_key_pair.this[0]` when `create = true`).

### If you must stay on AWS provider 5.x

Continue using **terraform-aws-modules/key-pair/aws** **v2.x**, which does not use per-resource `region` and remains compatible with provider `>= 4.21`.
