# `apache_http` plugin

The `apache_http` plugin consumes [Apache HTTP](https://httpd.apache.org/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `log_format` | `default` | When choosing the 'default' option, the agent will expect and parse logs in a format that matches the default logging configuration. When choosing the 'observIQ' option, the agent will expect and parse logs in an optimized JSON format that adheres to the observIQ specification, requiring an update to the apache2.conf file. See the Apache HTTP Server source page for more information. |
| `enable_access_log` | `true`  | Enable to collect Apache HTTP Server access logs |
| `access_log_path` | `"/var/log/apache2/access.log"` | Path to access log file |
| `enable_error_log` | `true` | Enable to collect Apache HTTP Server error logs |
| `error_log_path` | `"/var/log/apache2/error.log"` | Path to error log file |
| `start_at` | `end` | Start reading file from 'beginning' or 'end' |

## Example usage

### Configuration

Using default log paths:

```yaml
pipeline:
- type: apache_http
- type: stdout

```

With non-standard log paths:

```yaml
pipeline:
- type: apache_http
  access_log_path: "/path/to/logs"
- type: stdout

```

With `observiq` log format:

```yaml
pipeline:
- type: apache_http
  log_format: observiq
- type: stdout

```
