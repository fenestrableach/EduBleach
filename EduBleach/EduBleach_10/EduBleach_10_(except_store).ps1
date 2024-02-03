# EduBleach_10_(except_store)

# List of apps to uninstall
$appsToUninstall = @(
    "Microsoft.549981C3F5F10"
    "Microsoft.BingWeather"
    "Microsoft.GetHelp"
    "Microsoft.Getstarted"
    "Microsoft.Microsoft3DViewer"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.MixedReality.Portal"
    "Microsoft.MSPaint"
    "Microsoft.Office.OneNote"
    "Microsoft.People"
    "Microsoft.ScreenSketch"
    "Microsoft.SkypeApp"
    "Microsoft.Wallet"
    "Microsoft.WindowsAlarms"
    "Microsoft.WindowsCalculator"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsSoundRecorder"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxApp"
    "Microsoft.XboxGameOverlay"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.YourPhone"
    "Microsoft.ZuneMusic"
    "Microsoft.ZuneVideo"
    "Microsoft.Windows.Photos"
    "microsoft.windowscommunicationsapps"
    "Microsoft.WindowsCamera"
)

# View of apps to uninstall
foreach ($app in $appsToUninstall) {
    try {
        # Uninstalling apps using Remove-AppxPackage cmdlet
        Get-AppxPackage -Name $app | Remove-AppxPackage -ErrorAction Stop
        Write-Host "Successfully uninstalled $app"
    } catch {
        Write-Host "Failed to uninstall $app. Error: $_"
    }
}

# Pause script execution
Read-Host "Press Enter to exit"