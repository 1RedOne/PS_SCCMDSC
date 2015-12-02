#region prereq ref
<#
Msiexec /i .\msxml6.msi /passive /l*+ %windir%\temp\SCCM_MSXML6.log
msiexec /i .\msxml6_x64.msi /passive /l*+ %windir%\temp\SCCM_MSXML6_64.log

#dotnet
Add-WindowsFeature -Name NET-Framework-Features,NET-Framework-Core -Source "E:\_Software\SCCM 2012\sxs"

adksetup.exe /features OptionId.ApplicationCompatibilityToolkit,OptionId.DeploymentTools,OptionId.WindowsPreinstallationEnvironment,OptionId.UserStateMigrationTool,OptionId.VolumeActivationManagementTool,OptionId.WindowsPerformanceToolkit,OptionId.SqlExpress2012 /ceip ON /norestart

#ever thing else
Add-WindowsFeature BITS,BITS-IIS-Ext,BITS-Compact-Server, Web-Server, Web-WebServer, Web-Common-Http, Web-Default-Doc,Web-Dir-Browsing,Web-Http-Errors, Web-Static-Content, Web-Http-Redirect,Web-App-Dev,Web-Net-Ext,Web-Net-Ext45,Web-ASP,Web-Asp-Net,Web-Asp-Net45,Web-CGI,Web-ISAPI-Ext,Web-ISAPI-Filter,Web-Health,Web-Http-Logging,Web-Custom-Logging,Web-Log-Libraries,Web-Request-Monitor,Web-Http-Tracing,Web-Performance,Web-Stat-Compression,Web-Security,Web-Filtering,Web-Basic-Auth,Web-IP-Security,Web-Url-Auth,Web-Windows-Auth,Web-Mgmt-Tools,Web-Mgmt-Console,Web-Mgmt-Compat,Web-Metabase,Web-Lgcy-Mgmt-Console,Web-Lgcy-Scripting,Web-WMI,Web-Scripting-Tools,Web-Mgmt-Service, RDC -Verbose -whatif

#WSUS Console

Install-WindowsFeature -Name UpdateServices-Ui

#>
#endregion