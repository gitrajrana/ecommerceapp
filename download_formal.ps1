$urls = @(
    "https://images.unsplash.com/photo-1594932224012-7014197e44e2?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1598033129183-c4f50c7176c8?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1593032465175-481ac7f401a0?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1507679799987-c71177962645?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1591011831838-898492065886?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1589310243389-96a5483213a8?auto=format&fit=crop&q=80&w=800"
)

$destDir = "mensformal"
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir }

foreach ($i in 0..($urls.Count - 1)) {
    $destFile = Join-Path $destDir "formal$($i+1).jpg"
    try {
        Invoke-WebRequest -Uri $urls[$i] -UserAgent "Mozilla/5.0" -OutFile $destFile
        Write-Host "Success: $destFile"
    } catch {
        Write-Host "Failed: $($urls[$i])"
    }
}
