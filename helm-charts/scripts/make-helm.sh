#!/bin/bash -e

echo "Packaging helm charts"
helm package ./charts/* --destination ./public

echo "Writing: public/index.yaml"
helm repo index ./public --url https://cdr.github.io/helm-charts/
