# Battery Driver Refresh

Documentation and troubleshooting notes for Windows battery-device drivers.

## Contents
- [Installation and refresh instructions](docs/INSTALLATION.md)
- [Battery Driver Remover shortcut setup](docs/SHORTCUT-SETUP.md)

## Purpose
This repository documents ways to check and refresh the built-in Windows battery devices:
- Microsoft ACPI-Compliant Control Method Battery
- Microsoft AC Adapter

This repository contains documentation only. It does not distribute an installer or an automated driver-removal script. The shortcut guide documents a setup script shared separately; review that script carefully before running it.

## Important
Prefer Device Manager for routine troubleshooting. Do not disable User Account Control (UAC), automate approval of UAC prompts, force-remove protected devices, or delete driver-store packages. Windows may reinstall built-in devices after restart. Save your work before any restart.

Independent community documentation; not affiliated with Microsoft or any laptop manufacturer.