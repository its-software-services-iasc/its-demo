#!/bin/bash

CHART_VERSION=1.1.5-rc1
CHART_URL=https://its-software-services-devops.github.io/helm-terraform-gcp/

helm repo add helm-terraform-gcp-local ${CHART_URL}
helm repo update

helm template helm-terraform-gcp-local/helm-terraform-gcp \
--version=${CHART_VERSION} \
-f iasc-its-demo.yaml \
--name-template iasc-its-demo --debug