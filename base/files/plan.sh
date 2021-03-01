#!/bin/bash
#
# Perform terraform plan with secure and terse output.
PLAN_OUTPUT=$(terraform plan -out="${PLANFILE}" 2>&1 >/dev/null)

# REM: terragrunt
STATUS_CODE=$?
if [[ $STATUS_CODE -eq 0 ]]; then
    terraform show "${PLANFILE}" 2>/dev/null | tfmask
else
    echo "${PLAN_OUTPUT}" | tfmask
    exit "${STATUS_CODE}"
fi