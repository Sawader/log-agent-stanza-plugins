# `aerospike` plugin

The `aerospike` plugin consumes [Aerospike](https://aerospike.com/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field | Default | Description |
| --- | --- | --- |
| `general_log_path` | `"/var/log/aerospike/aerospike.log"` | The absolute path to the general Aerospike logs |
| `start_at` | `end` | Start reading file from 'beginning' or 'end' |

## Example usage

### Configuratio