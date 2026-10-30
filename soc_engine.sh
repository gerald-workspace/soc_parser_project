#!/bin/bash

# Store the output report path with today's date
REPORT_FILE="reports/incident_summary_$(date +%Y-%m-%d).txt"

# Group all analysis commands and write to report file
{
  echo "=========================================="
  echo "    AUTOMATED SOC INCIDENT REPORT"
  echo "    Generated on: $(date)"
  echo "=========================================="

  echo -e "\n1. SSH Brute Force Detection:"
  grep "Failed password" logs/auth.log | awk '{print $13}' | sort | uniq -c

  echo -e "\n2. Web Intrusion (401 Unauthorized) Spikes:"
  grep "401" logs/web.log | awk '{print $1}' | sort | uniq -c

  echo "=========================================="
} > "$REPORT_FILE"

# Print single status notification to screen
echo "Analysis complete! Report saved to $REPORT_FILE"
