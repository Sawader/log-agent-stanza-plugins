# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.0.89] Unreleased

### Fixed
- removed unneccessary regex parser from vmware_vcenter. [PR380](https://github.com/observIQ/stanza-plugins/pull/380)


## [0.0.88] 2021-10-29

### Changed

- Improves quote handling inw3c [PR379](https://github.com/observIQ/stanza-plugins/pull/379)


### Fixed

- `haproxy`: Fixed typo with field name `query_parameter` ([PR368](https://github.com/observIQ/stanza-plugins/pull/368))

## [0.0.87] 2021-10-11

### Changed

- `cisco_meraki`: Removed `key_value_parser` due to some log e