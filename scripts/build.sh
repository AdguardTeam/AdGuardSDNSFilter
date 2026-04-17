#!/bin/bash
set -euo pipefail

# Log file
LOG_FILE="build.log"
: > "$LOG_FILE"

# Compiling AdGuard DNS filter
echo "=== Compiling AdGuard DNS filter ===" | tee -a "$LOG_FILE"
hostlist-compiler -c configuration.json -o Filters/filter.txt --verbose 2>&1 | tee -a "$LOG_FILE"

# Compiling AdGuard DNS Popup Hosts filter
echo "" | tee -a "$LOG_FILE"
echo "=== Compiling AdGuard DNS Popup Hosts filter ===" | tee -a "$LOG_FILE"
hostlist-compiler -c configuration_popup_filter.json -o Filters/adguard_popup_filter.txt --verbose 2>&1 | tee -a "$LOG_FILE"

# Post-process popup filter
echo "" | tee -a "$LOG_FILE"
echo "=== Post-processing popup filter ===" | tee -a "$LOG_FILE"
node scripts/popup_filter_build.js Filters/adguard_popup_filter.txt 2>&1 | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "=== Done. Log saved to $LOG_FILE ===" | tee -a "$LOG_FILE"