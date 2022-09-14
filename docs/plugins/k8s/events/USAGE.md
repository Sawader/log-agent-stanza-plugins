# Kubernetes Events w/ Google Cloud Logging

Stanza can be deployed as a Kubernetes Events collector by leveraging the [k8s_event_input](https://github.com/observIQ/stanza/blob/main/docs/operators/k8s_event_input.md) operator. [Minikube](https://minikube.sigs.k8s.io/docs/start/)
can be used for this example.

## Architecture

1. Service account with