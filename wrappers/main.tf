module "wrapper" {
  source = "../"

  for_each = var.items

  create                = try(each.value.create, var.defaults.create, true)
  create_private_key    = try(each.value.create_private_key, var.defaults.create_private_key, false)
  key_name              = try(each.value.key_name, var.defaults.key_name, null)
  key_name_prefix       = try(each.value.key_name_prefix, var.defaults.key_name_prefix, null)
  private_key_algorithm = try(each.value.private_key_algorithm, var.defaults.private_key_algorithm, "RSA")
  private_key_rsa_bits  = try(each.value.private_key_rsa_bits, var.defaults.private_key_rsa_bits, 4096)
  public_key            = try(each.value.public_key, var.defaults.public_key, "")
  tags                  = try(each.value.tags, var.defaults.tags, {})
}
