&"c:\Program Files\Microsoft Dynamics 365 Business Central\140\Service\NavAdminTool.ps1"
&"c:\Program Files (x86)\Microsoft Dynamics 365 Business Central\140\RoleTailored Client\NavModelTools.ps1"

Set-Location $PSScriptRoot
if($PSScriptRoot.ToLower().EndsWith("extra"))
{
    Set-Location ".."
}
