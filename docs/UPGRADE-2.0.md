# Upgrade from v1.x to v2.x

Please consult the `examples` directory for reference example configurations. If you find a bug, please open an issue with supporting configuration to reproduce.

## List of backwards incompatible changes

- Minimum supported version of Terraform AWS provider updated to v4.21 to support latest resources
- Minimum supported version of Terraform updated to v1.0
- The variable `create_key_pair` is now simply `create`

## Additional changes

### Added

- Support for creating private key within the module using the commonly used `tls_private_key` resource

### Modified

  - None

### Removed

  - None

### Variable and output changes

1. Removed variables:

  - None

2. Renamed variables:

  - `create_key_pair` -> `create`

3. Added variables:

  - `create_private_key`
  - `private_key_algorithm`
  - `private_key_rsa_bits`

4. Removed outputs:

    - None

5. Renamed outputs:

    - `key_pair_key_pair_id` -> `key_pair_id`
    - `key_pair_key_name` -> `key_pair_name`


6. Added outputs:

    - `key_pair_arn`
    - `private_key_id`
    - `private_key_openssh`
    - `private_key_pem`
    - `public_key_fingerprint_md5`
    - `public_key_fingerprint_sha256`
    - `public_key_openssh`
    - `public_key_pem`

## Upgrade Migrations

### State Move Commands

None required
