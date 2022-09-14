# Elastic Kubernetes Service Logs and Events w/ Google Cloud Logging

Stanza can be deployed to Elastic Kubernetes Service for log and event collection. Container logs
are gathered from each Kubernetes Node's filesystem. Events are collected from the Kubernetes
API Server.

## Architecture

1. Service account with permission to the Kubernetes API server
2. Config map: Contains the Stanza configurations
3. Credentials secret: Contains Google Cloud [service account credentials JSON file](https://cloud.google.com/docs/authentication/getting-started)
4. Persistent volume: Allows the Stanza events agent database to persist between restarts and pod evictions
5. Statefulset: A single replica statefulset for reading Kubernetes events
6. Daemonset: For reading logs from each Kubernetes node

## Prerequisites

1. Google Cloud account with Cloud Logging API enabled
2. Google service account with [roles/logging.logWriter](https://cloud.google.com/logging/docs/acces