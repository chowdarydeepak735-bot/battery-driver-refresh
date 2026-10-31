# Battery Driver Refresh

A safety-first GitHub Pages guide for checking and refreshing Windows battery-device drivers.

## View the site
After GitHub Pages is enabled, the site should be available at:
https://chowdarydeepak735-bot.github.io/battery-driver-refresh/

## Enable GitHub Pages
1. Open this repository on GitHub.
2. Go to **Settings → Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**.
4. Select branch **main** and folder **/(root)**.
5. Click **Save** and wait for the deployment to finish.

## Safety
- Prefer Device Manager over scripted device removal.
- Do not disable UAC or automate UAC approval.
- Do not force-remove protected system devices or delete driver-store packages.
- Windows may reinstall built-in devices after a restart.
- If Windows says **Access is denied**, stop and use the laptop manufacturer's support instructions.

This project is an independent guide and is not affiliated with Microsoft.
