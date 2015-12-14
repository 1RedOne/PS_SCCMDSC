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
#region prereq ref
<#
Msiexec /i .\msxml6.msi /passive /l*+ %windir%\temp\SCCM_MSXML6.log
msiexec /i .\msxml6_x64.msi /passive /l*+ %windir%\temp\SCCM_MSXML6_64.log

#dotnet
Add-WindowsFeature -Name NET-Framework-Features,NET-Framework-Core -Source "E:\_Software\SCCM 2012\sxs"

adksetup.exe /features OptionId.ApplicationCompatibilityToolkit,OptionId.DeploymentTools,OptionId.WindowsPreinstallationEnvironment,OptionId.UserStateMigrationTool,OptionId.VolumeActivat
ionManagementTool,OptionId.WindowsPerformanceToolkit,OptionId.SqlExpress2012 /ceip ON /norestart

#ever thing else
Add-WindowsFeature BITS,BITS-IIS-Ext,BITS-Compact-Server, Web-Server, Web-WebServer, Web-Common-Http, Web-Default-Doc,Web-Dir-Browsing,Web-Http-Errors, Web-Static-Content, Web-Http-Redir
ect,Web-App-Dev,Web-Net-Ext,Web-Net-Ext45,Web-ASP,Web-Asp-Net,Web-Asp-Net45,Web-CGI,Web-ISAPI-Ext,Web-ISAPI-Filter,Web-Health,Web-Http-Logging,Web-Custom-Logging,Web-Log-Libraries,Web-Re
quest-Monitor,Web-Http-Tracing,Web-Performance,Web-Stat-Compression,Web-Security,Web-Filtering,Web-Basic-Auth,Web-IP-Security,Web-Url-Auth,Web-Windows-Auth,Web-Mgmt-Tools,Web-Mgmt-Consol
e,Web-Mgmt-Compat,Web-Metabase,Web-Lgcy-Mgmt-Console,Web-Lgcy-Scripting,Web-WMI,Web-Scripting-Tools,Web-Mgmt-Service, RDC -Verbose -whatif

#WSUS Console

Install-WindowsFeature -Name UpdateServices-Ui

#>
#endregion
param($ComputerName)
configuration SCCMPrereqs
{
   
    node ($ComputerName)
    {
        # Call Resource Provider
        # E.g: WindowsFeature, File
        WindowsFeature BITS
        {
           Ensure = "Present"
           Name   = "BITS"
        }

         WindowsFeature BITS
        {
           Ensure = "Present"
           Name   = "BITS-IIS-Ext"
        }

        WindowsFeature BITS-Compact-Server
        {
           Ensure = "Present"
           Name   = "BITS-Compact-Server"
        }

        WindowsFeature BITS-Compact-Server
        {
           Ensure = "Present"
           Name   = "BITS-Compact-Server"
        }

        WindowsFeature  Web-Server
        {
           Ensure = "Present"
           Name   = " Web-Server"
        }

        WindowsFeature  Web-WebServer
        {
           Ensure = "Present"
           Name   = " Web-WebServer"
        }

        WindowsFeature  Web-Common-Http
        {
           Ensure = "Present"
           Name   = " Web-Common-Http"
        }

        WindowsFeature  Web-Default-Doc
        {
           Ensure = "Present"
           Name   = " Web-Default-Doc"
        }

        WindowsFeature Web-Dir-Browsing
        {
           Ensure = "Present"
           Name   = "Web-Dir-Browsing"
        }

        WindowsFeature Web-Http-Errors
        {
           Ensure = "Present"
           Name   = "Web-Http-Errors"
        }

        WindowsFeature  Web-Static-Content
        {
           Ensure = "Present"
           Name   = " Web-Static-Content"
        }

        WindowsFeature  Web-Http-Redirect
        {
           Ensure = "Present"
           Name   = " Web-Http-Redirect"
        }

        WindowsFeature Web-App-Dev
        {
           Ensure = "Present"
           Name   = "Web-App-Dev"
        }

        WindowsFeature Web-Net-Ext
        {
           Ensure = "Present"
           Name   = "Web-Net-Ext"
        }

        WindowsFeature Web-Net-Ext45
        {
           Ensure = "Present"
           Name   = "Web-Net-Ext45"
        }

        WindowsFeature Web-ASP
        {
           Ensure = "Present"
           Name   = "Web-ASP"
        }

        WindowsFeature Web-Asp-Net
        {
           Ensure = "Present"
           Name   = "Web-Asp-Net"
        }

        WindowsFeature Web-Asp-Net45
        {
           Ensure = "Present"
           Name   = "Web-Asp-Net45"
        }

        WindowsFeature Web-CGI
        {
           Ensure = "Present"
           Name   = "Web-CGI"
        }

        WindowsFeature Web-ISAPI-Ext
        {
           Ensure = "Present"
           Name   = "Web-ISAPI-Ext"
        }

        WindowsFeature Web-ISAPI-Filter
        {
           Ensure = "Present"
           Name   = "Web-ISAPI-Filter"
        }

        WindowsFeature Web-Health
        {
           Ensure = "Present"
           Name   = "Web-Health"
        }

        WindowsFeature Web-Http-Logging
        {
           Ensure = "Present"
           Name   = "Web-Http-Logging"
        }

        WindowsFeature Web-Custom-Logging
        {
           Ensure = "Present"
           Name   = "Web-Custom-Logging"
        }

        WindowsFeature Web-Log-Libraries
        {
           Ensure = "Present"
           Name   = "Web-Log-Libraries"
        }

        WindowsFeature Web-Request-Monitor
        {
           Ensure = "Present"
           Name   = "Web-Request-Monitor"
        }

        WindowsFeature Web-Http-Tracing
        {
           Ensure = "Present"
           Name   = "Web-Http-Tracing"
        }

        WindowsFeature Web-Performance
        {
           Ensure = "Present"
           Name   = "Web-Performance"
        }

        WindowsFeature Web-Stat-Compression
        {
           Ensure = "Present"
           Name   = "Web-Stat-Compression"
        }

        WindowsFeature Web-Security
        {
           Ensure = "Present"
           Name   = "Web-Security"
        }

        WindowsFeature Web-Filtering
        {
           Ensure = "Present"
           Name   = "Web-Filtering"
        }

        WindowsFeature Web-Basic-Auth
        {
           Ensure = "Present"
           Name   = "Web-Basic-Auth"
        }

        WindowsFeature Web-IP-Security
        {
           Ensure = "Present"
           Name   = "Web-IP-Security"
        }

        WindowsFeature Web-Url-Auth
        {
           Ensure = "Present"
           Name   = "Web-Url-Auth"
        }

        WindowsFeature Web-Windows-Auth
        {
           Ensure = "Present"
           Name   = "Web-Windows-Auth"
        }

        WindowsFeature Web-Mgmt-Tools
        {
           Ensure = "Present"
           Name   = "Web-Mgmt-Tools"
        }

        WindowsFeature Web-Mgmt-Console
        {
           Ensure = "Present"
           Name   = "Web-Mgmt-Console"
        }

        WindowsFeature Web-Mgmt-Compat
        {
           Ensure = "Present"
           Name   = "Web-Mgmt-Compat"
        }

        WindowsFeature Web-Metabase
        {
           Ensure = "Present"
           Name   = "Web-Metabase"
        }

        WindowsFeature Web-Lgcy-Mgmt-Console
        {
           Ensure = "Present"
           Name   = "Web-Lgcy-Mgmt-Console"
        }

        WindowsFeature Web-Lgcy-Scripting
        {
           Ensure = "Present"
           Name   = "Web-Lgcy-Scripting"
        }

        WindowsFeature Web-WMI
        {
           Ensure = "Present"
           Name   = "Web-WMI"
        }

        WindowsFeature Web-Scripting-Tools
        {
           Ensure = "Present"
           Name   = "Web-Scripting-Tools"
        }

        WindowsFeature Web-Mgmt-Service
        {
           Ensure = "Present"
           Name   = "Web-Mgmt-Service"
        }

        WindowsFeature  RDC
        {
           Ensure = "Present"
           Name   = " RDC"
        }

        WindowsFeature WSUS {

            Ensure = 'Present'
            Name = 'UpdateServices-Ui'
            DependsOn = "[WindowsFeature]WSUS"

        }

        File FriendlyName
        {
            Ensure          = "Present"
            SourcePath      = $SourcePath
            DestinationPath = $DestinationPath
            Type            = "Directory"
            DependsOn       = "[WindowsFeature]FriendlyName"
        }       
    }
}