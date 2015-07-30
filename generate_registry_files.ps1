[string[]]$Sessions = Get-ChildItem -Path "HKCU:\Software\SimonTatham\PuTTY\Sessions" -Name
$template = "themes/solarized_dark.reg.template"

foreach($sess in $Sessions){
        (Get-Content $template) -replace "__SessionName__" , $sess | Set-Content "generated/theme_${sess}.reg"
            regedit.exe "generated/theme_${sess}.reg"
}
