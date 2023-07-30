[![Test Config](https://github.com/Sawader/log-agent-stanza-plugins/actions/workflows/config.yml/badge.svg)](https://github.com/Sawader/log-agent-stanza-plugins/actions/workflows/config.yml)

# log-agent-stanza-plugins

log-agent-stanza-plugins contains plugins for the [Stanza Log Agent](https://github.com/Sawader/log-agent-stanza-plugins)

## Release Process

All plugins in this repository are released together in a single operation.

Maintainers can create a release using the GitHub UI by creating a release that adheres to Golang's [semver](https://godoc.org/github.com/rogpeppe/go-internal/semver) format. (`v1.2.3`)

## Development Guidelines

### Plugin Parameters

#### Labels

* Should be written in title case.

#### Descriptions

* Should be written in complete (or mostly complete) sentences and end in a period.
* Avoid repeating the parameter label in the description. The label will already appear with the description.
  * Container name
    * BAD: The name of the container
    * GOOD: Specify a single name or use * to collect logs from all containers.
* Descriptions should offer additional information on proper configuration.
  * Listen IP
    * BAD: A syslog ip address of the form `<ip>`
    * GOOD: A network interface for the agent to bind. Typically 0.0.0.0 for most configurations.
* No markdown or markup (e.g. HTML).
  * Listen IP
    * BAD: A syslog ip address of the form `<ip>`
    * GOOD: A network interface for the agent to bind. Typically 0.0.0.0 for most configurations.
* Try to use 180 characters or less.
  * Log Format
    * BAD: When choosing the 'default' option, the agent will expect and parse logs in a format that matches the default logging configuration. When choosing the 'observIQ' option, the agent will expect and parse logs in an optimized JSON format that adheres to the observIQ specification, requiring an update
    * GOOD: The observIQ setting expects an optimized JSON format and will require changes to the nginx.conf file. See the Nginx Source docs for more info.
* For enum types, do not include the options in the description if it provides no further information.
  * Protocol
    * BAD: The protocol of received syslog messages (`rfc3164` or `rfc5424`)
    * GOOD: rfc5424 is the newer and more common format for syslog messages.
* Don't add quotes around option names.
  * Start At
    * BAD: Start reading file from 'beginning' or 'end'
    * GOOD: Reading from the end will only ingest new logs added to the end of the file.

# Community

Stanza is an open source project. If you'd like to contribute, take a look at our [contribution guidelines](/docs/CONTRIBUTING.md). We look forward to building with you.

## Code of Conduct

Stanza follows the [CNCF Code of Conduct](https://github.com/cncf/foundation/blob/master/code-of-conduct.md). Please report violations of the Code of Conduct to any or all [maintainers](/docs/MAINTAINERS.md).

# Other questions?

Send us an [email](mailto:support.stanza@observiq.com), or open an issue with your question. We'd love to hear from you!