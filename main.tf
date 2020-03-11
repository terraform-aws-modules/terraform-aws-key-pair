resource "aws_key_pair" "this" {
  count = var.create_key_pair ? 1 : 0

  key_name        = var.key_name
  key_name_prefix = var.key_name_prefix
  public_key      = var.public_key

  tags = var.tags
}
