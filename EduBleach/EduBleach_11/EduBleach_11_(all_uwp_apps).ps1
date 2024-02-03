# EduBleach_11_(all_uwp_apps)

# List of apps to uninstall
$appsToUninstall = @(
    "Clipchamp.Clipchamp"
    "Microsoft.BingNews"
    "Microsoft.BingWeather"
    "Microsoft.GamingApp"
    "Microsoft.GetHelp"
    "Microsoft.MicrosoftOfficeHub"
    "Microsoft.MicrosoftSolitaireCollection"
    "Microsoft.MicrosoftStickyNotes"
    "Microsoft.People"
    "Microsoft.PowerAutomateDesktop"
    "Microsoft.StorePurchaseApp"
    "Microsoft.Todos"
    "Microsoft.Windows.Photos"
    "Microsoft.WindowsAlarms"
    "Microsoft.WindowsCalculator"
    "Microsoft.WindowsCamera"
    "microsoft.windowscommunicationsapps"
    "Microsoft.WindowsFeedbackHub"
    "Microsoft.WindowsMaps"
    "Microsoft.WindowsSoundRecorder"
    "Microsoft.Xbox.TCUI"
    "Microsoft.XboxGameOverlay"
    "Microsoft.XboxGamingOverlay"
    "Microsoft.XboxSpeechToTextOverlay"
    "Microsoft.XboxIdentityProvider"
    "Microsoft.YourPhone"
    "Microsoft.ZuneVideo"
    "MicrosoftCorporationII.QuickAssist"
    "Microsoft.549981C3F5F10"
    "Microsoft.Getstarted"
    "Microsoft.WindowsStore"
    "Microsoft.Paint"
    "Microsoft.ZuneMusic"
    "Microsoft.WindowsNotepad"
    "Microsoft.ScreenSketch"
    "Microsoft.WindowsTerminal"
    "Microsoft.OutlookForWindows"
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