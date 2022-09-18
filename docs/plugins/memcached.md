# `memcached` plugin

The `memcached` plugin consumes [Memcached](https://memcached.org/) log entries from journald and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `enable_memcached_journald_log_path` | `false` | Enable to define custom Journald Log path. If not enabled it will read from "/run/journal" or "/var/log/journal" by default. |
| `memcached_journald_log_path` | `""` | Custom Journald Log path. |
| `start_at` | `end` | Start reading file from 'beginning' or 'end' |

## Example usage

### Configuration

Using defaul