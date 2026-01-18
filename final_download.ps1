# Robust Master Download Script

$ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

function Download-Category($dir, $prefix, $urls) {
    if (!(Test-Path $dir)) { New-Item -ItemType Directory -Path $dir }
    for ($i = 0; $i -lt $urls.Count; $i++) {
        $dest = Join-Path $dir "$($prefix)$($i+1).jpg"
        try {
            Write-Host "Downloading $($urls[$i]) to $dest ..."
            Invoke-WebRequest -Uri $urls[$i] -UserAgent $ua -OutFile $dest -TimeoutSec 30
            Write-Host "Success."
        } catch {
            Write-Host "Failed: $($urls[$i]) - $($_.Exception.Message)"
        }
    }
}

# 1. Men's Formals
Download-Category "mensformal" "formal" @(
    "https://images.unsplash.com/photo-1594932224012-7014197e44e2?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1598033129183-c4f50c7176c8?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1593032465175-481ac7f401a0?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1507679799987-c71177962645?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1591011831838-898492065886?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1589310243389-96a5483213a8?auto=format&fit=crop&q=80&w=800"
)

# 2. Men's Casuals
Download-Category "menscasual" "casual" @(
    "https://images.unsplash.com/photo-1516762689617-e1cff932993d?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1488161628813-24476839304a?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1520975661595-6453be3f7070?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&q=80&w=800"
)

# 3. Men's Ethnic
Download-Category "mensethnic" "ethnic" @(
    "https://images.unsplash.com/photo-1583089892943-e02e5b017b6a?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1620608552086-538012675684?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1621612053648-73546747d961?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1567113463300-102570d28d73?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1574044536246-34079836934c?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1631557008104-5e58933b45a2?auto=format&fit=crop&q=80&w=800"
)

# 4. Dress Materials
Download-Category "dressmaterials" "dress" @(
    "https://images.unsplash.com/photo-1624445161042-45a704eeb64b?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1528459801416-a7e99a0def3b?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1544441893-675973e31985?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1606131731446-5568d8139580?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1558486012-817176f84c6d?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1617627143750-d86bc21e42bb?auto=format&fit=crop&q=80&w=800"
)

# 5. Party Wear
Download-Category "partywear" "party" @(
    "https://images.unsplash.com/photo-1613424935149-c8efd5c41e91?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1583039949165-96ee24b0d8de?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1568252542512-9fe8fe9c87bb?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1574868843985-6caab2f9e64c?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1554787497-98caae0f95df?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1589212987511-4a924cb9d8ac?auto=format&fit=crop&q=80&w=800"
)

# 6. Kids
Download-Category "kids" "kids" @(
    "https://images.unsplash.com/photo-1667846541827-4d5ba7806798?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1641745921155-6e62d2cd4131?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1622290319146-7b63df48a635?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1569974641446-22542de88536?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1648111144134-0a34fca7a632?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1642597383617-922e83b2f459?auto=format&fit=crop&q=80&w=800"
)

# 7. Sarees
Download-Category "sarees" "saree" @(
    "https://images.unsplash.com/photo-1664636404761-d3aa86169911?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1692992193981-d3d92fabd9cb?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1756376748126-f3a50445b5e6?auto=format&fit=crop&q=80&w=800",
    "https://images.unsplash.com/photo-1616756351484-798f37bdffa0?auto=format&fit=crop&q=80&w=800"
)
