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
    * BAD: When choosing the 'default' option, the agent will expect and parse logs in a format that matches the default logging configuration. When choo