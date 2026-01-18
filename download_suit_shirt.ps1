$urls = @(
    "https://images.unsplash.com/photo-1768489039841-ef4f2d763233?fm=jpg&q=60&w=1000&auto=format&fit=crop",
    "https://images.unsplash.com/photo-1695291649448-8b4144361014?fm=jpg&q=60&w=1000&auto=format&fit=crop",
    "https://images.unsplash.com/photo-1765175096109-85677f8b7a5b?fm=jpg&q=60&w=1000&auto=format&fit=crop",
    "https://images.unsplash.com/photo-1507679799987-c71177962645?fm=jpg&q=60&w=1000&auto=format&fit=crop",
    "https://images.unsplash.com/photo-1625502709763-f5f3880c17ba?fm=jpg&q=60&w=1000&auto=format&fit=crop",
    "https://images.unsplash.com/photo-1590426987126-d4290aaedc72?fm=jpg&q=60&w=1000&auto=format&fit=crop"
)

$destDir = "suit_shirt_img"
if (!(Test-Path $destDir)) { New-Item -ItemType Directory -Path $destDir }

$wc = New-Object System.Net.WebClient
$wc.Headers.Add("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36")

for ($i = 0; $i -lt $urls.Count; $i++) {
    $destFile = Join-Path $destDir "img$($i+1).jpg"
    try {
        Write-Host "Downloading $($urls[$i]) to $destFile ..."
        $wc.DownloadFile($urls[$i], $destFile)
        Write-Host "Success."
    } catch {
        Write-Host "Failed to download $($urls[$i]): $($_.Exception.Message)"
    }
}
