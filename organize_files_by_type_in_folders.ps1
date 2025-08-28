$source = 'the path to the folder whose files should be organized. please change. example: C:\Downloads\'
$dest = 'the path to the folder that stores organized files. please change. example: C:\Downloads\Organized'

# Create destination folders if they don't exist
New-Item -ItemType Directory -Path "$dest\Images" -Force | Out-Null
New-Item -ItemType Directory -Path "$dest\Documents" -Force | Out-Null
New-Item -ItemType Directory -Path "$dest\Others" -Force | Out-Null

Get-ChildItem -Path $source -File | ForEach-Object {
    $file = $_  # capture the FileInfo object before the switch

    switch ($file.Extension.ToLower()) {
        '.jpg'  { Move-Item -Path $file.FullName -Destination "$dest\Images" }
        '.png'  { Move-Item -Path $file.FullName -Destination "$dest\Images" }
        '.docx' { Move-Item -Path $file.FullName -Destination "$dest\Documents" }
        '.xlsx' { Move-Item -Path $file.FullName -Destination "$dest\Documents" }
        '.pdf' { Move-Item -Path $file.FullName -Destination "$dest\Documents" }
        '.doc' { Move-Item -Path $file.FullName -Destination "$dest\Documents" }
        default { Move-Item -Path $file.FullName -Destination "$dest\Others" }
    }
}

Read-Host 'Press Enter to exit'
