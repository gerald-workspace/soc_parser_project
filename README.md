# Linux SOC Incident Response & Log Analysis Engine

## Overview
This project is an automated Bash-based SOC (Security Operations Center) log analysis engine designed to parse Linux authentication and web server telemetry. It automates threat detection by identifying SSH brute-force attempts and HTTP 401 unauthorized intrusion spikes, consolidating findings into timestamped incident reports.

## Project Structure
- `soc_engine.sh` - Primary automated analysis script.
- `logs/` - Directory containing sample log sources (`auth.log`, `web.log`).
- `reports/` - Output directory holding generated timestamped incident reports.

## Features
- **SSH Brute Force Detection**: Scans authentication logs for failed password attempts and extracts top attacker IP addresses.
- **Web Intrusion Scanning**: Identifies unauthorized access patterns (HTTP 401 response codes).
- **Automated Reporting**: Uses variable formatting and redirection to output standardized daily incident summaries.

## Usage
Ensure the script has execution permissions and run the engine:

