output "this_key_pair_key_name" {
  description = "The key pair name."
  value       = element(concat(aws_key_pair.this.*.key_name, list("")), 0)
}

output "this_key_pair_fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = element(concat(aws_key_pair.this.*.fingerprint, list("")), 0)
}
