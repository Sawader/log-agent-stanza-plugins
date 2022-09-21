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
| `cluster_name`      | `""`                         | Cluster name to be added as a resource label. Used when source is set to kubernetes |
| `pod_name`          | `nginx`                      | The pod name without the unique identifier on the end. It should match the deployment, daemonset, statefulset or other resource name. Used when source is set to kubernetes |
| `container_name`    | `*`                          | The container name, useful if the pod has more than one container. Used when source is set to kubernetes |

## Log Format

### Default Log Format

The default log format assumes the use of the combined format documented [here](http://nginx.org/en/docs/http/ngx_http_log_module.html).

Combined format configuration:
```
log_format combined '$remote_addr - $remote_user [$time_local] '
                    '"$request" $status $body_bytes_sent '
                    '"$http_referer" "$http_user_agent"';
```

Combined format sample log:
```
10.33.104.40 - - [11/Jan/2021:11:25:01 -0500] "GET / HTTP/1.1" 200 612 "-" "curl/7.58.0"
```

### observIQ Log format

The observIQ log format is an enhanced log format that includes many useful fields that do not exist in the default
logging format, such as upstream information and http_x_forwarded_for headers.

observIQ log format configuration:
```
log_format observiq '{"remote_addr":"$remote_addr","remot