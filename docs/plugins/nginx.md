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
| `source`            | `file`                       | Specifies where the logs are located. When choo