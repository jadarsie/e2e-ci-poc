#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o xtrace

ensure() {
  if [ -f /var/lib/waagent/Certificates.pem ]; then
    sudo cp /var/lib/waagent/Certificates.pem /usr/local/share/ca-certificates/azsCertificate.crt
    sudo update-ca-certificates
  fi
}

ensure
