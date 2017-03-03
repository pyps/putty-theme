![license](https://img.shields.io/github/license/pyps/putty-theme.svg)

# putty-theme
Some template options if your are useing Putty with Windows (Powershell v2)

Always backup your Putty registry!

To generate a template file: Export registry -> remove quotation marks -> Transform DWORD to DEC

## Usage

Settings are only applied with '-apply'

```
PS C:\> powershell -ExecutionPolicy unrestricted

Windows PowerShell
Copyright (C) 2009 Microsoft Corporation. Alle Rechte vorbehalten.

PS C:\> cd putty-theme\
PS C:\putty-theme> .\putty_change_session_settings.ps1 [-filter <Wildcard filter>] [-template <template file>] [-apply]
PS C:\putty-theme>

```


Cudos to @brantb [solarized](https://github.com/brantb/solarized)
