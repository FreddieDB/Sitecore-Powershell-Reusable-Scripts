#Copies a Field from 1 Lang version to another. In this example we loop through the item and children in zh-CN (Chinese)
#and copies a field value from the en-CA language version to Chinese 

$Items = Get-ChildItem -path "master:/sitecore/content/Sites/XX/IndustryMenu" -Recurse -Language "zh-cn"

foreach($Item in $Items)
{
    Write-Host $Item.Paths.Path
    
    $itemENCA = Get-Item -path $Item.Paths.Path -Language "en-CA" 
    
    Write-Host $itemENCA["link"]
    
    $Item.Editing.BeginEdit()
    $Item["link"] = $itemENCA["link"]
    $Item.Editing.EndEdit()
}