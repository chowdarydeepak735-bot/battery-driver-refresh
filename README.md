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

## Problems this may help troubleshoot
The shortcut is intended to help troubleshoot certain Windows battery-device detection and reporting issues. Refreshing the device entries may help in cases such as:

- Windows does not detect the laptop's built-in battery.
- The battery icon or percentage is missing or not updating correctly.
- Windows displays an unusual charging status, such as “plugged in, not charging.”
- Windows does not correctly recognise the AC adapter.
- Battery-device entries appear incorrectly in Device Manager.

### What it cannot fix
- A physically damaged or worn-out battery.
- A faulty charger, charging cable, charging port, or motherboard.
- Every cause of rapid battery drain or charging problems.

Refreshing device entries is not guaranteed to fix these issues. Windows may reinstall the devices after restarting. If the problem continues, use the laptop manufacturer's diagnostics or seek qualified repair.

## Important
Prefer Device Manager for routine troubleshooting. Do not disable User Account Control (UAC), automate approval of UAC prompts, force-remove protected devices, or delete driver-store packages. Save your work before any restart.

Independent community documentation; not affiliated with Microsoft or any laptop manufacturer.