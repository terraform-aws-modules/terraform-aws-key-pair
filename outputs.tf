################################################################################
# Key Pair
################################################################################

output "key_pair_id" {
  description = "The key pair ID"
  value       = try(aws_key_pair.this[0].key_pair_id, "")
}

output "key_pair_arn" {
  description = "The key pair ARN"
  value       = try(aws_key_pair.this[0].arn, "")
}

output "key_pair_name" {
  description = "The key pair name"
  value       = try(aws_key_pair.this[0].key_name, "")
}

output "key_pair_fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716"
  value       = try(aws_key_pair.this[0].fingerprint, "")
}

################################################################################
# Private Key
################################################################################

output "private_key_id" {
  description = "Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource"
  value       = try(tls_private_key.this[0].id, "")
}

output "private_key_openssh" {
  description = "Private key data in OpenSSH PEM (RFC 4716) format"
  value       = try(trimspace(tls_private_key.this[0].private_key_openssh), "")
  sensitive   = true
}

output "private_key_pem" {
  description = "Private key data in PEM (RFC 1421) format"
  value       = try(trimspace(tls_private_key.this[0].private_key_pem), "")
  sensitive   = true
}

output "public_key_fingerprint_md5" {
  description = "The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations"
  value       = try(tls_private_key.this[0].public_key_fingerprint_md5, "")
}

output "public_key_fingerprint_sha256" {
  description = "The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:....` Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the ECDSA P224 limitations"
  value       = try(tls_private_key.this[0].public_key_fingerprint_sha256, "")
}

output "public_key_openssh" {
  description = "The public key data in \"Authorized Keys\" format. This is populated only if the configured private key is supported: this includes all `RSA` and `ED25519` keys"
  value       = try(trimspace(tls_private_key.this[0].public_key_openssh), "")
}

output "public_key_pem" {
  description = "Public key data in PEM (RFC 1421) format"
  value       = try(trimspace(tls_private_key.this[0].public_key_pem), "")
}
