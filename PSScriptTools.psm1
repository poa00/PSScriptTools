
Get-ChildItem -path $PSScriptRoot\*.ps1 | foreach-object -process {
    . $_.FullName
}

Set-Alias -Name Tee-Verbose -Value Out-VerboseTee
Set-Alias -Name occ -Value Out-ConditionalColor
Set-Alias -name pswho -Value Get-PSWho

$exportParams = @{
    Function = 'Add-Border','Tee-Verbose','Write-Detail','Out-VerboseTee',
    'Get-PSWho','Out-ConditionalColor','New-RandomFileName','New-CustomFileName'
    Alias =  'Tee-Verbose','occ','pswho'
}

Export-ModuleMember @exportParams
