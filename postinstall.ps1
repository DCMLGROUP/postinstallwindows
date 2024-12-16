# supression de Microsoft Edge du bureau
Remove-Item "$([Environment]::GetFolderPath('Desktop'))\Microsoft Edge.lnk"

# Création du raccourci "Utilisateur" sur le bureau
$Shell = New-Object -ComObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath('Desktop')
$Shortcut = $Shell.CreateShortcut("$DesktopPath\Utilisateur.lnk")
$Shortcut.TargetPath = "$([Environment]::GetFolderPath('UserProfile'))"
$Shortcut.Arguments = ""
$Shortcut.Save()

# Création du raccourci "Ce PC" sur le bureau
$Shell = New-Object -ComObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath('Desktop')
$Shortcut = $Shell.CreateShortcut("$DesktopPath\Ce PC.lnk")
$Shortcut.TargetPath = "::{20D04FE0-3AEA-1069-A2D8-08002B30309D}"
$Shortcut.Arguments = ""
$Shortcut.Save()

# Création du raccourci "Panneau de configuration" sur le bureau
$Shell = New-Object -ComObject WScript.Shell
$DesktopPath = [Environment]::GetFolderPath('Desktop')
$Shortcut = $Shell.CreateShortcut("$DesktopPath\Panneau de configuration.lnk")
$Shortcut.TargetPath = "control.exe"
$Shortcut.Arguments = ""
$Shortcut.Save()

# Installer Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Installer les applications
choco install googlechrome -y
choco install firefox -y
choco install vlc -y
choco install 7zip -y
choco install libreoffice-fresh -y
choco install adobereader -y
choco install teamviewer -y

# Installer les mise a jour
Install-Module -Name PSWindowsUpdate -Force -AllowClobber
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Import-Module PSWindowsUpdate

# Rédémarer le PC
Restart-Computer -Force
