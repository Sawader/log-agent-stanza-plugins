# `tomcat` plugin

The `tomcat` plugin consumes [Apache Tomcat](https://tomcat.apache.org/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `source` | `file` | Use this field to specify where your logs are coming from. When choosing the 'file' option, the agent reads in logs from the log paths specified below. When choosing the 'Kubernetes' options, the agent reads logs from /var/log/containers based on the Pod and Container specified below. |
| `log_format` | `default`  | When choosing the 'default' option, the agent will expect and parse logs in a format that matches the default logging configuration. When choosing the 'observIQ' option, the agent will expect and parse logs in an optimized JSON format that adheres to the observIQ specification, requiring an update to the server.xml file. |
| `enable_access_log` | `true` | Enable to collect Apache Tomcat access logs |
| `access_log_path` | `"/usr/local/tomcat/logs/localhost_access_log.*.txt"` | Path to access log file |
| `enable_catalina_log` | `true` | Enable to collect Apache Tomcat catalina logs |
| `catali