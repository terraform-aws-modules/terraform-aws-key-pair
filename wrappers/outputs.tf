output "wrapper" {
  description = "Map of outputs of a wrapper."
  value       = module.wrapper
  sensitive   = true # At least one sensitive module output (private_key_openssh) found (requires Terraform 0.14+)
}
