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
  - Update uwsgi field `headers` to `headers_count`

## [0.0.83] 2021-09-29

### Added

- Added `tcp` and `udp` plugin ([PR341](https://github.com/observIQ/stanza-plugins/pull/341))
- Added `common_event_format` plugin ([328](https://github.com/observIQ/stanza-plugins/pull/328))

### Fixed

- HAProxy: Handle issue where http logs might fail if extra field is present [PR346](https://github.com/observIQ/stanza-plugins/pull/346)

## [0.0.82] 2021-09-28

### Fixed

- OracleDB: Resolved parsing issue related to multiple audit log formats [PR341](https://github.com/observIQ/stanza-plugins/pull/343)

## [0.0.81] 2021-09-28

- HAProxy: Resolved an issue where http logs using default format can fail to parse ([PR342](https://github.com/observIQ/stanza-plugins/pull/342))

## [0.0.80] 2021-09-23

### Fixed
- HAProxy: Promote frontend_port as a resources ([PR338](https://github.com/observIQ/stanza-plugins/pull/338))
- Updated ubiquiti plugin ([337](https://github.com/observIQ/stanza-plugins/pull/337))
  - Updated `ac_lite_ap_parser` expression check to be more inline with expected format.
  - Moved catchall from default to a route with pattern matching and set default to output in router.
  - Added if checks to determine if fields exist before doing operation `promote_name`, `promote_device`, and `severity_parser`. This will stop errors in log file if fields do not exist.

## [0.0.79] - 2021-09-22

### Added

- Added haproxy plugin ([PR 335](https://github.com/observIQ/stanza-plugins/pull/335))

### Fixed

- Oracle Database: ([PR 334](https://github.com/observIQ/stanza-plugins/pull/334))
  - Resolved issue where ipv6 values caused a parse failure
  - Resolved issue where default listener path is not correct
- Oracle Database: ([PR 331](https://github.com/observIQ/stanza-plugins/pull/331))
  - Resolves issue where regex fails to parse audit file dbid

## [0.0.78] - 2021-09-15

### Changed

- W3C: Added max_concurrent_files parameter ([PR332](https://github.com/observIQ/stanza-plugins/pull/332))

### Fixed

- Ubiquiti: Fixed time parsing issue when timezones are mismatched ([PR333](https://github.com/observIQ/stanza-plugins/pull/333))

## [0.0.77] - 2021-09-14

### Changed

- Cloudwatch Logs: Added log_groups and log_group_prefix parameters ([PR330](https://github.com/observIQ/stanza-plugins/pull/330))

## [0.0.76] - 2021-09-13

### Changed

- W3C: Added optional delete_at_end parameter ([PR327](https://github.com/observIQ/stanza-plugins/pull/327))

## [0.0.75] - 2021-09-10

### Changed

- Asterisk: Dont trim call_id ([PR325](https://github.com/observIQ/stanza-plugins/pull/325))

### Fixed

- Fixed an issue where mongodb plugin id is wrong when running on kubernetes and using 4.4+ log format ([PR326](https://github.com/observIQ/stanza-plugins/pull/326))

### Fixed

## [0.0.74] - 2021-09-10

### Added

- Added Asterisk plugin ([322](https://github.com/observIQ/stanza-plugins/pull/322))

### Changed

- Updated `w3c` plugin ([PR318](https://github.com/observIQ/stanza-plugins/pull/318))
  - Add quote parsing from iis to handle when a pair of single quotes are in the log entry.
- Added net.transport, net.peer.ip, net.peer.port, net.host.ip and net.host.port labels to all tcp / udp plugins ([PR320](https://github.com/observIQ/stanza-plugins/pull/320))
  - cisco_asa, cisco_meraki, rsyslog, syslog, syslogng, ubiquiti, vmware_esxi, vmware_vcenter
- Updated `microsoft_iis` and `w3c` plugin ([PR316](https://github.com/observIQ/stanza-plugins/pull/316))
  - Update plugin to use new w3c plugin.
- Update `netflow`, `sflow`, `vmware_esxi`, `ubiquiti`, `cisco_meraki`, `syslog`, `rsyslog`, `syslogng`, and `vmware_vcenter` plugin ([PR316](https://github.com/observIQ/stanza-plugins/pull/316))
  - Added `listen_ip` as parameter
  - Added `listen_port` as parameter
  - Added parameter `advanced_config` set to true on `listen_address`, `listen_ip` and `location`. This is to be used in UI to hide `listen_ip` behind an advanced option
  - Changed description of `listen_address` to "Parameter Deprecated Use `listen_ip` and `listen_port` instead."
  - Added fall back regex parser in case syslog parser fails to `syslog`, `rsyslog`, `syslogng`, and `vmware_vcenter` plugins. This will attempt to parse severity from priority. The unparsed portion will be put in message.

### Fixed 

- Issue #[314](https://github.com/observIQ/stanza-plugins/issues/314) for nodejs  ([PR315](https://github.com/observIQ/stanza-plugins/pull/315))
- Journald: Fixed default value for `journald_log_path` when `enable_journald_log_path` is set ([PR319](https://github.com/observIQ/stanza-plugins/pull/319))
- Mongodb: Fixed missing plugin_id label

## [0.0.73] - 2021-09-02

### Added
- Added Rails plugin ([308](https://github.com/observIQ/stanza-plugins/pull/308))

### Changed

- Added plugin ID to json, mongo plugins

## [0.0.72] - 2021-08-25

### Added

- Added W3C plugin ([PR307](https://github.com/observIQ/stanza-plugins/pull/307))

## [0.0.71] - 2021-08-23

### Fixed
- Fixed an issue with label.plugin_id was not set correctly for nodejs plugin on K8s ([PR309](https://github.com/observIQ/stanza-plugins/pull/309))
- OpenShift test case ([PR310](https://github.com/observIQ/stanza-plugins/pull/310))

## [0.0.70] - 2021-08-23

### Added

- Added Nodejs plugin ([305](https://github.com/observIQ/stanza-plugins/pull/305))

### Changed
- Journald: Added optional poll interval parameter ([PR304](https://github.com/observIQ/stanza-plugins/pull/304))
- OpenShift: Added optional poll interval parameter ([PR304](https://github.com/observIQ/stanza-plugins/pull/304))

## [0.0.69] - 2021-08-11

### Changed
- MongoDB:
  - Promote WiredTiger message to $record.message ([PR300](https://github.com/observIQ/stanza-plugins/pull/300))
  - Set log type when running on Kubernetes ([PR302](https://github.com/observIQ/stanza-plugins/pull/302))
- JSON: Set log type when running on kubernetes ([PR303](https://github.com/observIQ/stanza-plugins/pull/303))

## [0.0.68] - 2021-08-09

### Changed
- MongoDB: Default pod name, removed wildcard ([PR298](https://github.com/observIQ/stanza-plugins/pull/298))

### Fixed
- Changed: Removed file_log_path required and added pod name required param ([PR297](https://github.com/observIQ/stanza-plugins/pull/297))

## [0.0.67] - 2021-08-06

### Added
- MongoDB: Added support for kubernetes ([PR294](https://github.com/observIQ/stanza-plugins/pull/294))
- JSON: Added support for kubernetes ([PR296](https://github.com/observIQ/stanza-plugins/pull/296))
  - The kubernetes_container plugin can still be used to gather all pod logs, while the json plugin can be used
    to target a single deployment / daemonset / statefulset.

### Changed
- Nginx: Added optional encoding option ([PR292](https://github.com/observIQ/stanza-plugins/pull/292))

## [0.0.66] - 2021-06-30

### Changed
- Openshift: Added observiq-agent and bindplane-agent filters to avoid potential circular parsing ([PR289](https://github.com/observIQ/stanza-plugins/pull/289))
- Reduced sqlserver max_reads from 1000 to 100, to combat too many open files error ([PR288](https://github.com/observIQ/stanza-plugins/pull/288))
- Netflow / Sflow plugins: Added sampling options, for reducing log volume ([PR290](https://github.com/observIQ/stanza-plugins/pull/290))

## [0.0.65] - 2021-06-23

### Added
- Added Goflow plugins ([PR280](https://github.com/observIQ/stanza-plugins/pull/280))
  - Sflow Plugin
  - Netflow v5 / v9 / ipfix

## [0.0.64] - 2021-06-21

### Fixed
- Retain sc-status field `microsoft_iis` ([PR287](https://github.com/observIQ/stanza-plugins/pull/287)

## [0.0.63] - 2021-06-17
### Added
- Add `apache_combined` plugin ([PR284](https://github.com/observIQ/stanza-plugins/pull/284))
- Add `apache_common` plugin ([PR281](https://github.com/observIQ/stanza-plugins/pull/281))
### Changed
- Update `microsoft_iis` plugin ([PR285](https://github.com/observIQ/stanza-plugins/pull/285))
  - Add location as parameter and to `time_parser`
- Update `codeigniter` plugin ([PR282](https://github.com/observIQ/stanza-plugins/pull/282))
  - Add multiline message support
  - Parse nested json in message if detected
- Update `openshift` plugin ([PR283](https://github.com/observIQ/stanza-plugins/pull/283))
  - Make metadata optional
## [0.0.62] - 2021-06-16
### Added
- Add `codeigniter` plugin ([PR276](https://github.com/observIQ/stanza-plugins/pull/276))
### Changed
- Update `uwsgi` plugin ([PR278](https://github.com/observIQ/stanza-plugins/pull/278))
  - Remove empty `message` fields
- Update `cisco_meraki` plugin ([PR275](https://github.com/observIQ/stanza-plugins/pull/275))
  - Parse known message field formats
- Update `microsoft_iis` plugin ([PR274](https://github.com/observIQ/stanza-plugins/pull/274))
  - This changes plugin to use `csv_parser`
- Update `kubernetes_events` plugin ([277](https://github.com/observIQ/stanza-plugins/pull/277))
  - Added missing severity mappings

## [0.0.61] - 2021-06-10
### Changed
- Update `cisco_meraki` plugin ([PR272](https://github.com/observIQ/stanza-plugins/pull/272))
  - Fix parsing errors
- Update `ubiquiti` plugin, added severity parsing ([267](https://github.com/observIQ/stanza-plugins/pull/267))
- Update `syslog`, removed special handling ([PR286](https://github.com/observIQ/stanza-plugins/pull/268))
- Renamed `journald` field `$record.MESSAGE` to `$record.message` ([PR268](https://github.com/observIQ/stanza-plugins/pull/266))

## [0.0.60] - 2021-06-09
### Added
- Added Ubiquiti plugin ([264](https://github.com/observIQ/stanza-plugins/pull/264))

### Changed
- Fixed an issue where journald does not always include the severity parse from field ([PR263](https://github.com/observIQ/stanza-plugins/pull/263))

## [0.0.59] - 2021-06-08
### Added
- Add `uwsgi` plugin ([PR261](https://github.com/observIQ/stanza-plugins/pull/261))

### Changed
- Update `macos` plugin 
  - Add `supported_platforms` macos ([PR258](https://github.com/observIQ/stanza-plugins/pull/258))
  - Update system regex to handle space padded dates ([PR259](https://github.com/observIQ/stanza-plugins/pull/259))
  - Add `relevant_if` to `install_log_path` and `system_log_path` parameters ([PR260](https://github.com/observIQ/stanza-plugins/pull/260))
 
## [0.0.58] - 2021-05-26
### Added
- Add `macos` plugin ([PR256](https://github.com/observIQ/stanza-plugins/pull/256))

## [0.0.57] - 2021-05-20
### Added
- Add `aws_cloudwatch` plugin ([PR251](https://github.com/observIQ/stanza-plugins/pull/251))
### Changed
- Update `pgbouncer` plugin ([PR254](https://github.com/observIQ/stanza-plugins/pull/254))
  - Parse stats from logs.
  - Parse requests from logs.
  - Handle timestamps with timezone
  - Handle brackets around pid

## [0.0.55] - 2021-05-17
### Changed
- Update `netmotion` plugin ([PR250](https://github.com/observIQ/stanza-plugins/pull/250))
  - Add handle bracket in fwver field for structured data.

## [0.0.54] - 2021-05-06
### Changed
- Fixed nested json parsing for Azure Container Logs using Azure Log Analytics ([PR249](https://github.com/observIQ/stanza-plugins/pull/249) 
- Renamed plugin parameter `name` to `event_hub_name` for Azure plugins Event Hub and Log Analytics ([PR249](https://github.com/observIQ/stanza-plugins/pull/249))

## [0.0.53] - 2021-05-06
### Added
- Add Azure Event Hub Plugin ([PR245](https://github.com/observIQ/stanza-plugins/pull/245))
- Add MariaDB plugin ([PR246](https://github.com/observIQ/stanza-plugins/pull/246))
- Add Rsyslog Plugin ([PR247](https://github.com/observIQ/stanza-plugins/pull/247))
- Add Syslog-ng Plugin ([PR247](https://github.com/observIQ/stanza-plugins/pull/247))
## [0.0.52] - 2021-04-16
### Added
- Add Netmotion plugin ([Pr244](https://github.com/observIQ/stanza-plugins/pull/244))
### Changed
## [0.0.51] - 2021-03-29
### Added
- Add plugins ([PR236](https://github.com/observIQ/stanza-plugins/pull/236))
  - `file`
  - `json`
  - `csv`
### Changed
- Update VMware vCenter to make use of TCP input's adjustable buffer ([PR238](https://github.com/observIQ/stanza-plugins/pull/238))
- Update plugins ([PR237](https://github.com/observIQ/stanza-plugins/pull/237))
  - Bumped versions of `zookeeper` and `kafka` plugins so they can be registered with platform information.
## [0.0.50] - 2021-03-18
### Changed
- Update `mysql` plugin ([PR234](https://github.com/observIQ/stanza-plugins/pull/234))
  - Update `label` and `description` of `enable_mariadb_audit_log` parameter.
## [0.0.49] - 2021-03-18
- Update `mysql` plugin ([PR232](https://github.com/observIQ/stanza-plugins/pull/232))
  - Add MariaDB audit plugin log parser using new `csv_parser`
  - Add `min_stanza_version` and set to v0.13.17
## [0.0.48] - 2021-02-25
### Changed
- Update `hadoop` plugin ([PR230](https://github.com/observIQ/stanza-plugins/pull/230))
  - Remove `preserve_to` parameter from severity
- Update `vmware_vcenter` and `vmware_esxi` plugins ([PR231](https://github.com/observIQ/stanza-plugins/pull/231))
  - Add support for TLS (requires Stanza v0.13.14 or newer)
## [0.0.47] - 2021-02-18
### Changed
- Update `mysql` plugin ([PR228](https://github.com/observIQ/stanza-plugins/pull/228))
  - Add `sql_command` field to `slow_query_log` and `general_log`
- Update `postgresql` plugin ([PR227](https://github.com/observIQ/stanza-plugins/pull/227))
  - Add `sql_command` field
  - Fix statement parsing error not capturing multiline messages
## [0.0.46] - 2021-02-15
### Changed
- Update `syslog` plugin ([PR225](https://github.com/observIQ/stanza-plugins/pull/225))
  - Detect if \r is included in the syslog message and escape it
- Fix Cassandra parameter's relevant_if typos (equal => equals) [PR224](https://github.com/observIQ/stanza-plugins/pull/224)
## [0.0.45] - 2021-02-10
### Changed
- Update `syslog` plugin ([PR222](https://github.com/observIQ/stanza-plugins/pull/222))
  - Use recombine operator to support multiline Syslog
- Update plugins ([PR221](https://github.com/observIQ/stanza-plugins/pull/221))
  - `tomcat` and `nginx`
    - Update `log_format` description
    - Add `cluster_name` Parameter
  - `apache_http`
    - Update `log_format` description
## [0.0.44] - 2021-02-04
### Changed
- Update plugins ([PR219](https://github.com/observIQ/stanza-plugins/pull/219))
  - `kubernetes_container`
    - Add `enable_nested_json_parser` parameter.
    - Add optional parsing of messages if they match a JSON format
  - `tomcat`
    - Update `source` and `log_format` descriptions
    - Update parameter order
    - Disable parsing of messages if they match a JSON format from `kubernetes_container`
  - `apache_http`
    - Update `log_format` descriptions
    - Update parameter order
  - `nginx`
    - Update `source` and `log_format` descriptions
    - Update parameter order
    - Disable parsing of messages if they match a JSON format from `kubernetes_container`
  - `nginx_ingress`
    - Update `log_format` descriptions
    - Update parameter order
    - Disable parsing of messages if they match a JSON format from `kubernetes_container`
## [0.0.43] - 2021-02-04
### Changed
- Update `openshift` plugin ([PR218](https://github.com/observIQ/stanza-plugins/pull/218))
  - Fix regex_parser to handle periods in pod name
  - Fix regex_parser: remove `k8s_` prefix from service name
## [0.0.42] - 2021-02-03
### Changed
- Update `kubernetes_cluster` plugin ([PR216](https://github.com/observIQ/stanza-plugins/pull/216)
  - Fix timestamp parser error when parsing kublet logs.
## [0.0.41] - 2021-02-03
### Changed
- Update `syslog` plugin ([PR214](https://github.com/observIQ/stanza-plugins/pull/214))
  - Add `location` parameter with UTC default
  - Fix invalid protocol error when starting log agent.
- Update `kubernetes_events` plugin ([PR212](https://github.com/observIQ/stanza-plugins/pull/212))
  - Add `SuccessfulRescale` mapping to  `severity_parser`
- Update `kubernetes_container` plugin ([PR211](https://github.com/observIQ/stanza-plugins/pull/211)
  - Add containerd support log parsing support
- Update `kubernetes_cluster` plugin ([PR211](https://github.com/observIQ/stanza-plugins/pull/211)
  - Add containerd support log parsing support
- Update `windows_event` plugin ([PR202](https://github.com/observIQ/stanza-plugins/pull/202))
  - Add `enable_custom_channels` and `custom_channels` parameter
## [0.0.40] - 2021-01-26
### Changed
- Update `postgresql` plugin ([PR209](https://github.com/observIQ/stanza-plugins/pull/209)
  - Change general regex parser to only par