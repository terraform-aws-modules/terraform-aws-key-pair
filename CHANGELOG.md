# Changelog

All notable changes to this project will be documented in this file.

### [2.0.1](https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v2.0.0...v2.0.1) (2022-11-07)


### Bug Fixes

* Update CI configuration files to use latest version ([#26](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/26)) ([6a0b8d8](https://github.com/terraform-aws-modules/terraform-aws-key-pair/commit/6a0b8d837ac40c56920b3e86dda943956955ff51))

## [2.0.0](https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v1.0.1...v2.0.0) (2022-07-20)


### ⚠ BREAKING CHANGES

* Update supported versions and add support for private key creation (#25)

### Features

* Update supported versions and add support for private key creation ([#25](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/25)) ([cd5ebdb](https://github.com/terraform-aws-modules/terraform-aws-key-pair/commit/cd5ebdb6235c7ffcbe04b595afb9be267f607890))

### [1.0.1](https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v1.0.0...v1.0.1) (2022-01-10)


### Bug Fixes

* update CI/CD process to enable auto-release workflow ([#23](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/23)) ([012633f](https://github.com/terraform-aws-modules/terraform-aws-key-pair/commit/012633f303ac41efc186bb4c2258eadfd600ab0a))

<a name="v1.0.0"></a>
## [v1.0.0] - 2021-04-26

- feat: Shorten outputs (removing this_) ([#21](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/21))
- chore: update documentation and pin `terraform_docs` version to avoid future changes ([#19](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/19))
- chore: align ci-cd static checks to use individual minimum Terraform versions ([#18](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/18))
- chore: add ci-cd workflow for pre-commit checks ([#17](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/17))


<a name="v0.6.0"></a>
## [v0.6.0] - 2020-11-24

- fix: Updated supported Terraform versions ([#13](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/13))


<a name="v0.5.0"></a>
## [v0.5.0] - 2020-08-13

- feat: aws-provider version bump to >= 2.46, < 4.0, terraform version bump to >= 0.12.6, < 0.14 ([#12](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/12))


<a name="v0.4.0"></a>
## [v0.4.0] - 2020-03-26

- fix: Fixed required version of AWS provider (thanks [@okgolove](https://github.com/okgolove))
- Merge pull request [#10](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/10) from terraform-aws-modules/terraform-provider-githubfile-1584635250918345000
- [ci skip] Create ".chglog/CHANGELOG.tpl.md".
- Merge pull request [#9](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/9) from terraform-aws-modules/terraform-provider-githubfile-1584536992993010000
- [ci skip] Create "Makefile".
- Merge pull request [#6](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/6) from terraform-aws-modules/terraform-provider-githubfile-1584536961704583000
- Merge pull request [#7](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/7) from terraform-aws-modules/terraform-provider-githubfile-1584536961704606000
- Merge pull request [#8](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/8) from terraform-aws-modules/terraform-provider-githubfile-1584536961704584000
- Merge pull request [#4](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/4) from terraform-aws-modules/terraform-provider-githubfile-1584536961704591000
- [ci skip] Create "LICENSE".
- [ci skip] Create ".gitignore".
- [ci skip] Create ".pre-commit-config.yaml".
- [ci skip] Create ".editorconfig".


<a name="v0.3.0"></a>
## [v0.3.0] - 2020-03-11

- Updated example to create tls private key and import it ([#2](https://github.com/terraform-aws-modules/terraform-aws-key-pair/issues/2))


<a name="v0.2.0"></a>
## [v0.2.0] - 2019-09-25

- Fixed count rule


<a name="v0.1.0"></a>
## v0.1.0 - 2019-09-25

- Fixed formatting
- Added aws-key-pair module


[Unreleased]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v1.0.0...HEAD
[v1.0.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.6.0...v1.0.0
[v0.6.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.2.0...v0.3.0
[v0.2.0]: https://github.com/terraform-aws-modules/terraform-aws-key-pair/compare/v0.1.0...v0.2.0
