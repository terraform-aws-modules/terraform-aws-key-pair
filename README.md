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
| acceleration\_status | (Optional) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended. | string | `"null"` | no |
| acl | (Optional) The canned ACL to apply. Defaults to 'private'. | string | `"private"` | no |
| bucket | (Optional, Forces new resource) The name of the bucket. If omitted, Terraform will assign a random, unique name. | string | `"null"` | no |
| bucket\_prefix | (Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket. | string | `"null"` | no |
| cors\_rule | Map containing a rule of Cross-Origin Resource Sharing. | any | `{}` | no |
| create\_bucket | Controls if S3 bucket should be created | bool | `"true"` | no |
| force\_destroy | (Optional, Default:false ) A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable. | bool | `"false"` | no |
| lifecycle\_rule | List of maps containing configuration of object lifecycle management. | any | `[]` | no |
| logging | Map containing access bucket logging configuration. | map(string) | `{}` | no |
| object\_lock\_configuration | Map containing S3 object locking configuration. | any | `{}` | no |
| policy | (Optional) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. | string | `"null"` | no |
| region | (Optional) If specified, the AWS region this bucket should reside in. Otherwise, the region used by the callee. | string | `"null"` | no |
| replication\_configuration | Map containing cross-region replication configuration. | any | `{}` | no |
| request\_payer | (Optional) Specifies who should bear the cost of Amazon S3 data transfer. Can be either BucketOwner or Requester. By default, the owner of the S3 bucket would incur the costs of any data transfer. See Requester Pays Buckets developer guide for more information. | string | `"null"` | no |
| server\_side\_encryption\_configuration | Map containing server-side encryption configuration. | any | `{}` | no |
| tags | (Optional) A mapping of tags to assign to the bucket. | map(string) | `{}` | no |
| versioning | Map containing versioning configuration. | map(string) | `{}` | no |
| website | Map containing static web-site hosting or redirect configuration. | map(string) | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_s3\_bucket\_arn | The ARN of the bucket. Will be of format arn:aws:s3:::bucketname. |
| this\_s3\_bucket\_bucket\_domain\_name | The bucket domain name. Will be of format bucketname.s3.amazonaws.com. |
| this\_s3\_bucket\_bucket\_regional\_domain\_name | The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL. |
| this\_s3\_bucket\_hosted\_zone\_id | The Route 53 Hosted Zone ID for this bucket's region. |
| this\_s3\_bucket\_id | The name of the bucket. |
| this\_s3\_bucket\_region | The AWS region this bucket resides in. |
| this\_s3\_bucket\_website\_domain | The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records. |
| this\_s3\_bucket\_website\_endpoint | The website endpoint, if the bucket is configured with a website. If not, this will be an empty string. |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Authors

Module managed by [Anton Babenko](https://github.com/antonbabenko).

## License

Apache 2 Licensed. See LICENSE for full details.
