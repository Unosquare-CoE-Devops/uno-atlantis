#!/bin/bash
#
# Perform terraform 'apply' with secure output.

set -o pipefail
terraform apply "${PLANFILE}" | tfmask

STATUS_CODE=$?
if [[ $STATUS_CODE -ne 1 ]]; then
  exit 0
else
  exit 1
fi