param (
    [string]$filter = '*',
    [string]$template = "$(Split-Path -Parent -Path $MyInvocation.MyCommand.Definition)\theme_solarized_dark.puttytemplate",
    [switch]$apply = $false
)

#Query Putty registry
[string[]]$putty_sessions = Get-ChildItem -Path "HKCU:\Software\SimonTatham\PuTTY\Sessions" -Name -Include $filter

$template_settings = ConvertFrom-StringData ( Get-Content $template | Out-String )

foreach($session in $putty_sessions){
	echo "HKCU:\Software\SimonTatham\PuTTY\Sessions\${session}\"

    if($apply){
	   foreach ($configitem in $template_settings.keys){
	       Set-ItemProperty -Path "HKCU:\Software\SimonTatham\PuTTY\Sessions\${session}\" -Name $configitem -Value $template_settings.$configitem
	   }
    }

}


