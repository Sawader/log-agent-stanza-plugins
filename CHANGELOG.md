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

- `cisco_meraki`: Removed `key_value_parser` due to some log entries not following needed pattern ([PR357](https://github.com/observIQ/stanza-plugins/pull/357))
- `cisco_catalyst`: Fix parsing error when log messages start with syslog priority ([PR358](https://github.com/observIQ/stanza-plugins/pull/358))
- Default plugins which `file_input` to use `utf-8` as a default rather than `nop` and removed `nop` as an option. Plugins affected: `asterisk, csv, file, nginx, tail, w3c`.  

## [0.0.86] 2021-10-05

### Changed

- `sonicwall`: Parse `src` and `dst` fields into ip, port, and interface fields: ([PR355](https://github.com/observIQ/stanza-plugins/pull/355))
- `cisco_catalyst`: Renamed `facility` to `facility_text` ([PR354](https://github.com/observIQ/stanza-plugins/pull/354))
 
## [0.0.85] 2021-10-04

### Added

- Added `cisco_catalyst` plugin ([351](https://github.com/observIQ/stanza-plugins/pull/351))

## [0.0.84] 2021-10-04

### Added

- Added `sonicwall` plugin ([PR340](https://github.com/observIQ/stanza-plugins/pull/340))

### Changed

- cisco_meraki: Remove custom regex parsers and use key_value_parser instead. ([PR349](https://github.com/observIQ/stanza-plugins/pull/349))
- Update `codeigniter`, `common_event_format`, and `uwsgi`
  - Remove Log Parser from title.
  - Update uwsgi field `headers` to `h