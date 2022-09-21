# `nginx` plugin

The `nginx` plugin consumes [nginx](https://www.nginx.com/) log entries from the local filesystem and outputs parsed entries.

## Supported Platforms

- Linux
- Windows
- MacOS
- Kubernetes

## Configuration Fields

| Field               | Default                      | Description |                                                                                                                                                                                                  
| ---                 | ---                          | ---         |                                                                                                                                                                                                     
| `source`            | `file`                       | Specifies where the logs are located. When choosing the 'file' option, the agent reads logs from the log path(s) specified. When choosing the 'Kubernetes' option, logs are read from /var/log/containers based on the Pod and Container specified |
| `enable_access_log` | `true`                       | Enable access log collection |
| `access_log_path`   | `/var/log/nginx/access.log`  | Path to access log file      |
| `log_format`        | `default`                    | Specifies the format of the access log entries. When choosing 'default', the agent will expect the log entries to match the default nginx log format. When choosing 'observiq', the agent will expect the log entries to match an optimized JSON format that adheres to the observIQ specification. See the Nginx documentation for more information |
| `enable_error_log`  | `true`                       | Enable error log collection  |
| `error_log_path`    | `/var/log/nginx/error.log`   | Path to error log file       |
| `start_at`          | `beginning`                  | Start reading file from 'beginning' or 'end' |
| `encoding`          | `utf-8`                      | Specify the encoding of the file(s) being read. In most cases, you can leave the default option selected. |
| `cluster_name`      | `""`                         | C