# Change Log

All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [0.8.0] - 2017-02-23
### Added
- Expose the raw hash of the object [(#74)](https://github.com/ansible/ansible_tower_client_ruby/pull/74)

### Fixed
- Override RAW attributes [(#75)](https://github.com/ansible/ansible_tower_client_ruby/pull/75)
- Inherit all errors from StandardError [(#76)](https://github.com/ansible/ansible_tower_client_ruby/pull/76)
- Fix error logging after changing error response classes [(#72)](https://github.com/ansible/ansible_tower_client_ruby/pull/72)


## [0.7.0] - 2017-02-17
### Changed
- Rescue Faraday errors and re-brand them as AnsibleTowerClient Errors [(#71)](https://github.com/ansible/ansible_tower_client_ruby/pull/71)


## [0.6.0] - 2017-02-02
### Added
- Refactor `#endpoint` [(#64)](https://github.com/ansible/ansible_tower_client_ruby/pull/64)
- Expose playbooks off of projects [(#62)](https://github.com/ansible/ansible_tower_client_ruby/pull/62)

### Changed
- Allow for alternative resource paths [(#66)](https://github.com/ansible/ansible_tower_client_ruby/pull/66)
- Raise UnlicensedFeatureError when we receive HTTP 402 [(#65)](https://github.com/ansible/ansible_tower_client_ruby/pull/65)

### Fixed
- Adjusted project_spec to test on a Project [(#63)](https://github.com/ansible/ansible_tower_client_ruby/pull/63)