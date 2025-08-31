#cloud-boothook
<powershell>
# Enable WinRM (lab-grade; harden for prod)
winrm quickconfig -q
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
New-Item -ItemType Directory -Path "C:\deploy" -Force | Out-Null

# OPTIONAL: Chocolatey bootstrap
Set-ExecutionPolicy Bypass -Scope Process -Force
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
</powershell>
