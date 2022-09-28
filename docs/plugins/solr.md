# `solr` plugin

The `solr` plugin consumes [Apache Solr](https://solr.apache.org/) log entries from the local filesystem and outputs parsed entries.

## Configuration Fields

| Field           | Default                     | Description           |
|-----------------|-----------------------------|-----------------------|
| `file_log_path` | `"/var/solr/logs/solr.log"` | Path to solr log file |
| `start_at` | `end` | Start reading file from 'beginn