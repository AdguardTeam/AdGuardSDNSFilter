#!/bin/bash

# Compilation DNS filter list
hostlist-compiler -c configuration.json -o Filters/filter.txt --verbose

# Compilation of all rules with popup, all, document modifiers into adguard_popup_filter.txt
hostlist-compiler -c configuration_popup_filter.json -o Filters/adguard_popup_filter.txt --verbose
node popup_filter_build.js