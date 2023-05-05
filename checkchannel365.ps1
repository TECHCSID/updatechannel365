$url = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Office\ClickToRun\Configuration').updatechannel
$channel = switch -regex ($url) {
    'pr/b8f9b850-328d-4355-9145-c59439a0c4cf' { 'Semi-Annual Enterprise Channel (Preview)' }
    'pr/7ffbc6bf-bc32-4f92-8982-f9dd17fd3114' { 'Semi-Annual Enterprise Channel' }
    'pr/64256afe-f5d9-4f86-8936-8840a6a4f5be' { 'Current Channel (Preview)' }
    'pr/492350f6-3a01-4f97-b9c0-c7c6ddf67d60' { 'Current Channel' }
    'pr/55336b82-a18d-4dd6-b5f6-9e5095c314a6' { 'Monthly Enterprise Channel' }
    'pr/5440fd1f-7ecb-4221-8110-145efaa6372f' { 'Beta Channel' }
    'pr/f2e724c1-748f-4b47-8fb8-8e0d210e9208' { 'Office 2019 VL Channel' }
    
}

Write-Output $channel

exit
