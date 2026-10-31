# Battery Driver Remover Shortcut — Setup Notes

This page documents the desktop-shortcut setup script shared for this repository. The setup script creates two files on the current user's Desktop:

- **BatteryDriverRemover.ps1** — the PowerShell script that performs the device-removal attempt.
- **Battery Driver Remover.lnk** — a Windows shortcut that opens Windows PowerShell and runs that script.

## What the shortcut does

When launched, the PowerShell script:

1. Looks for the Windows devices named **Microsoft ACPI-Compliant Control Method Battery** and **Microsoft AC Adapter**.
2. Attempts to remove each matching device instance using Windows' built-in Plug and Play utility.
3. Displays a completion message and asks whether to restart the laptop.
4. If the user enters **Y**, waits 15 seconds and then requests a forced restart. Any other response cancels the restart and waits for Enter before closing.

The setup script itself only creates the .ps1 file and the .lnk shortcut. It does not run the removal script immediately.

## Before using it

- Save all open work and close applications before starting.
- Keep the laptop connected to its charger if possible.
- Understand that removing these device instances can temporarily affect Windows battery reporting or power-management information.
- Windows may detect and reinstall the built-in devices after a restart. This is not a permanent driver replacement.
- The operation may fail with **Access is denied**, even if the shortcut is elevated. Do not try to bypass Windows security or forcibly remove protected driver packages.
- The script uses a forced restart if **Y** is entered. Do not choose that option until all work is saved.

## Creating and launching the shortcut

1. Open Windows PowerShell.
2. Review the setup script before running it. It writes the two files listed above to the Desktop.
3. Run the setup script. Check the Desktop for both files.
4. To run the shortcut with administrator permissions, right-click **Battery Driver Remover.lnk**, choose **Properties**, open **Shortcut > Advanced**, select **Run as administrator**, and confirm.
5. Double-click the shortcut. Windows User Account Control (UAC) may ask for approval. Review the prompt and approve it yourself only if you intend to run the script.
6. Read the PowerShell output. At the restart prompt, enter **Y** only after saving your work; otherwise enter **N**.

## Do not

- Disable User Account Control.
- Configure Windows to automatically approve UAC prompts.
- Run an unfamiliar or modified copy of the script.
- Delete driver-store packages or force-remove other devices.
- Assume that a displayed “Operation completed” message proves every device was successfully removed; check the output for errors.

## Safer alternative

For routine troubleshooting, use **Device Manager** instead:

1. Right-click Start and open **Device Manager**.
2. Expand **Batteries**.
3. Review the two Microsoft battery-related entries.
4. If you choose to uninstall a device, select only the relevant entry and follow Windows' prompts.
5. Restart normally from the Windows Start menu.

If the battery problem continues, consult the laptop manufacturer's support instructions rather than repeatedly removing devices.

## Scope

This is community documentation for Windows troubleshooting. It is not an official Microsoft or laptop-manufacturer utility, and it does not guarantee that battery problems will be fixed.