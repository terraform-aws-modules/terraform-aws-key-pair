# AWS Key Pair Terraform module

Terraform module which creates EC2 key pair resource by Terraform AWS provider.

This type of resources are supported:

* [EC2 Key Pair](https://www.terraform.io/docs/providers/aws/r/key_pair.html)

## Terraform versions

Only Terraform 0.12 is supported.

## Usage

### Private bucket with versioning enabled

```hcl
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  key_name   = "deployer"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"

}
```

## Conditional creation

Sometimes you need to have a way to create key pair conditionally but Terraform does not allow to use `count` inside `module` block, so the solution is to specify argument `create_key_pair`.

```hcl
# This EC2 key pair will not be created
module "key_pair" {
  source = "terraform-aws-modules/key-pair/aws"

  create_key_pair = false
  # ... omitted
}
```

## Examples:

* [Complete](https://github.com/terraform-aws-modules/terraform-aws-key-pair/tree/master/examples/complete) - Create EC2 key pair

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create\_key\_pair | Controls if key pair should be created | bool | `"true"` | no |
| key\_name | The name for the key pair. | string | `"null"` | no |
| key\_name\_prefix | Creates a unique name beginning with the specified prefix. Conflicts with key_name. | string | `"null"` | no |
| public\_key | The public key material. | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_key\_pair\_fingerprint | The MD5 public key fingerprint as specified in section 4 of RFC 4716. |
| this\_key\_pair\_key\_name | The key pair name. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Anton Babenko](https://github.com/antonbabenko).

## License

Apache 2 Licensed. See LICENSE for full details.
