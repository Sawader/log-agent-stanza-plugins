# `kafka` plugin

The `kafka` plugin consumes [Kafka](https://kafka.apache.org/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `enable_server_log` | `true` | Enable to collect Apache Kafka server logs |
| `server_log_path` | `"/home/kafka/kafka/logs/server.log*"`  | Apache Kafka server log path |
| `enable_controller_log` | `true` | Enable to collect Apache Kafka controller logs |
| `controller_log_path` | `"/home/kafka/kafka/logs/controller.log*"` | Apache Kafka controller log path |
| `enable_state_chan