#!/usr/bin/env bash

# Run this script from the root of the repo to create a configmap
# containing all of your local plugins, as well as re-deploying your agent

set -e

plugin_configmap() {
    kubectl delete configmap plugin || true

    args=""
    for f in plugins/*yaml; do
        args+="--from-file ${f} "
    done

    eval kubectl create configmap plugin "$args"
}

pipeline_configmap(