output "this_key_pair_key_name" {
  description = "The key pair name."
  value       = module.key_pair.this_key_pair_key_name
}

output "this_key_pair_key_pair_id" {
  description = "The key pair ID."
  value       = module.key_pair.this_key_pair_key_pair_id
}

output "this_key_pair_fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = module.key_pair.this_key_pair_fingerprint
}
