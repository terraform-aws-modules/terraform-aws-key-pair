variable "create" {
  description = "Determines whether resources will be created (affects all resources)"
  type        = bool
  default     = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

################################################################################
# Key Pair
################################################################################

variable "key_name" {
  description = "The name for the key pair. Conflicts with `key_name_prefix`"
  type        = string
  default     = null
}

variable "key_name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with `key_name`"
  type        = string
  default     = null
}

variable "public_key" {
  description = "The public key material"
  type        = string
  default     = ""
}

################################################################################
# Private Key
################################################################################

variable "create_private_key" {
  description = "Determines whether a private key will be created"
  type        = bool
  default     = false
}

variable "private_key_algorithm" {
  description = "Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519`"
  type        = string
  default     = "RSA"
}

variable "private_key_rsa_bits" {
  description = "When algorithm is `RSA`, the size of the generated RSA key, in bits (default: `4096`)"
  type        = number
  default     = 4096
}
