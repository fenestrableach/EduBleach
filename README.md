# EduBleach
**A tiny guide to bleach for Windows 10/11 Education with scripts and group policies!**
![EduBleach](https://github.com/fenestrableach/EduBleach/blob/main/EduBleach.png)

# First step (setting up group policies)

**Disable Candy Crush, TikTok, Spotify and other advertising apps (pre-disable before connecting to the Internet during the first clean installation to prevent downloading of advertising apps):**

`Win+R > gpedit.msc > Local Computer Policy > Administrative Templates > Windows Components > Cloud Content > Turn off Microsoft consumer experiences > Edit > Enabled`

**Disable automatic download and install of updates from Store:**

`Win+R > gpedit.msc > Local Computer Policy > Administrative Templates > Windows Components > Store > Turn off Automatic Download and Install of updates > Edit > Enabled`

# Second step (downloading scripts)

**Download and unpack the archive, select the required directory depending on your OS:**

[EduBleach](https://github.com/fenestrableach/EduBleach/archive/refs/heads/main.zip)

**Or download the files separately and put them in one folder:**

*For Windows 10 Education*

[EduBleach_10](https://github.com/fenestrableach/EduBleach/tree/main/EduBleach/EduBleach_10)

*For Windows 11 Education*

[EduBleach_11](https://github.com/fenestrableach/EduBleach/tree/main/EduBleach/EduBleach_11)

# Third step (launch)

**Run:**

> EduBleach_10.bat

**Or**

> EduBleach_11.bat

**And choose the option you need.**
