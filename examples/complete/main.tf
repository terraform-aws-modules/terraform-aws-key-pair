provider "aws" {
  region = local.region
}

locals {
  name   = "ex-${replace(basename(path.cwd), "_", "-")}"
  region = "eu-west-1"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-key-pair"
    GithubOrg  = "terraform-aws-modules"
  }
}

################################################################################
# Key Pair Module
################################################################################

module "key_pair" {
  source = "../../"

  key_name           = local.name
  create_private_key = true

  tags = local.tags
}

module "key_pair_external" {
  source = "../../"

  key_name   = "${local.name}-external"
  public_key = trimspace(tls_private_key.this.public_key_openssh)

  tags = local.tags
}

module "key_pair_disabled" {
  source = "../../"

  create = false
}

################################################################################
# Supporting Resources
################################################################################

resource "tls_private_key" "this" {
  algorithm = "RSA"
}
