# Battery Driver Refresh

Documentation and troubleshooting notes for Windows battery-device drivers.

## Contents
- [Installation and refresh instructions](docs/INSTALLATION.md)
- [Safety rules and troubleshooting](docs/SAFETY-AND-TROUBLESHOOTING.md)

## Purpose
This repository documents safe ways to check and refresh the built-in Windows battery devices:
- Microsoft ACPI-Compliant Control Method Battery
- Microsoft AC Adapter

This repository contains documentation only. It is not an installer and does not provide an automated driver-removal script.

## Important
Prefer Device Manager. Do not disable User Account Control (UAC), automate approval of UAC prompts, force-remove protected devices, or delete driver-store packages. Windows may reinstall built-in devices after restart.

Independent community documentation; not affiliated with Microsoft or any laptop manufacturer.
