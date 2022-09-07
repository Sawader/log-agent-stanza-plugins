# `apache_common` plugin

The `apache_common` plugin consumes [Apache Common](https://httpd.apache.org/docs/2.4/logs.html) log format entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `log_path` | `"/var/log/apache2/access.log"` |