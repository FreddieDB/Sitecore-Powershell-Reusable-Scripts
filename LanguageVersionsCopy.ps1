#Copy Item language versions from source to target lang. In this example below we copy the en-CA version over to a en-US language version

#Copy main item
Get-Item "/sitecore/content/Sites/XX/Item1" | Add-ItemLanguage -Language "en-CA" -TargetLanguage "en-US" -IfExist OverwriteLatest

#Copy its children
Get-ChildItem "/sitecore/content/Sites/XX/Item1" -Recurse | Add-ItemLanguage -Language "en-CA" -TargetLanguage "en-US" -IfExist OverwriteLatest