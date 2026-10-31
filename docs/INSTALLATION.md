# Installation and Driver Refresh Instructions

These steps describe a manual Windows troubleshooting procedure. There is no installer in this repository.

## Before starting
1. Save all open documents and close applications.
2. Connect the laptop to its charger if available.
3. Make sure you have permission to administer the computer.
4. If the battery is swollen, unusually hot, damaged, or smells unusual, stop using the laptop and contact the manufacturer or a qualified repair service.

## Recommended method: Device Manager
1. Right-click **Start** and open **Device Manager**.
2. Expand **Batteries**.
3. Right-click **Microsoft ACPI-Compliant Control Method Battery**.
4. Choose **Uninstall device** only if you are troubleshooting a battery reporting issue and Windows permits it.
5. Usually, leave **Microsoft AC Adapter** installed. Remove it only when a specific manufacturer support procedure tells you to.
6. Restart Windows normally: **Start → Power → Restart**.
7. After restart, open Device Manager again. Windows should normally detect the hardware and restore its built-in device driver.
8. If a device does not return, choose **Action → Scan for hardware changes**.

## Read-only PowerShell check
To list detected battery devices without changing anything, open PowerShell and run:

```powershell
Get-PnpDevice -Class Battery |
    Format-Table Status, FriendlyName, InstanceId -AutoSize
```

This command only displays device information. It does not uninstall drivers or restart the computer.

## If the device is missing or has an error
- Restart once using the normal Windows menu.
- Check Windows Update for applicable updates.
- Check the laptop manufacturer's support page for model-specific chipset, firmware, and power-management guidance.
- If the problem persists, contact the manufacturer's support team or a qualified technician.

## Do not
- Do not run unknown scripts as Administrator.
- Do not use commands to force-remove protected system devices.
- Do not delete driver-store packages for these built-in devices.
- Do not disable UAC or attempt to auto-approve UAC prompts.
