# `rabbitmq` plugin

The `rabbitmq` plugin consumes [RabbitMQ](https://www.rabbitmq.com/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `daemon_log_path` | `"/var/log/rabbitmq/rabbit@*.log"` | The absolute path to the RabbitMQ Daemon logs |
| `start_at` | `end` | Start reading file from 'beginning' or 'end' |

## Example usage

### Config