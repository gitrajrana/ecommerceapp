$ua = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"

function Download($url, $dest) {
    try {
        Write-Host "Downloading $url to $dest ..."
        Invoke-WebRequest -Uri $url -UserAgent $ua -OutFile $dest -TimeoutSec 30
        Write-Host "Success."
    } catch {
        Write-Host "Failed: $url - $($_.Exception.Message)"
    }
}

# Men's Formals
Download "https://images.unsplash.com/photo-1634511468235-b8e447102e08?auto=format&fit=crop&q=80&w=800" "mensformal/formal1.jpg"
Download "https://images.unsplash.com/photo-1630173250799-2813d34ed14b?auto=format&fit=crop&q=80&w=800" "mensformal/formal2.jpg"
Download "https://images.unsplash.com/photo-1632739500708-b3d74b07b816?auto=format&fit=crop&q=80&w=800" "mensformal/formal4.jpg"
Download "https://images.unsplash.com/photo-1644621596488-25d519a1a8ed?auto=format&fit=crop&q=80&w=800" "mensformal/formal5.jpg"

# Men's Casuals
Download "https://images.unsplash.com/photo-1666358085605-b3b717d5a210?auto=format&fit=crop&q=80&w=800" "menscasual/casual1.jpg"
Download "https://images.unsplash.com/photo-1616411598297-e0053c6ee59d?auto=format&fit=crop&q=80&w=800" "menscasual/casual2.jpg"

# Men's Ethnic
Download "https://images.unsplash.com/photo-1727835523545-70ee992b5763?auto=format&fit=crop&q=80&w=800" "mensethnic/ethnic1.jpg"
Download "https://images.unsplash.com/photo-1734418041662-ffd756053bb8?auto=format&fit=crop&q=80&w=800" "mensethnic/ethnic2.jpg"

# Dress Materials
Download "https://images.unsplash.com/photo-1701964621015-057c5bc5815f?auto=format&fit=crop&q=80&w=800" "dressmaterials/dress1.jpg"
Download "https://images.unsplash.com/photo-1674901908299-57224780d10d?auto=format&fit=crop&q=80&w=800" "dressmaterials/dress2.jpg"
Download "https://images.unsplash.com/photo-1681003564665-62848f8d481e?auto=format&fit=crop&q=80&w=800" "dressmaterials/dress4.jpg"
Download "https://images.unsplash.com/photo-1733145857366-fc99411080b8?auto=format&fit=crop&q=80&w=800" "dressmaterials/dress5.jpg"

# Party Wear
Download "https://images.unsplash.com/photo-1765790858442-c28fe2d32c3c?auto=format&fit=crop&q=80&w=800" "partywear/party1.jpg"
Download "https://images.unsplash.com/photo-1756483492038-974f2a2ff341?auto=format&fit=crop&q=80&w=800" "partywear/party2.jpg"

# Sarees
Download "https://images.unsplash.com/photo-1727430228383-aa1fb59db8bf?auto=format&fit=crop&q=80&w=800" "sarees/saree5.jpg"
Download "https://images.unsplash.com/photo-1617627143750-d86bc21e42bb?auto=format&fit=crop&q=80&w=800" "sarees/saree6.jpg"

# Winter
Download "https://images.unsplash.com/photo-1707871680348-75ee2def142b?auto=format&fit=crop&q=80&w=800" "wintercollection/winter1.jpg"

# Furnishings
Download "https://images.unsplash.com/photo-1633544097071-ac8410bf9e20?auto=format&fit=crop&q=80&w=800" "furnsings/furnishing2.jpg"
Download "https://images.unsplash.com/photo-1625063662680-6b673d8f4aef?auto=format&fit=crop&q=80&w=800" "furnsings/furnishing3.jpg"
Download "https://images.unsplash.com/photo-1616100587911-1747ac739e4e?auto=format&fit=crop&q=80&w=800" "furnsings/furnishing4.jpg"
Download "https://images.unsplash.com/photo-1579432274742-59e9387202d6?auto=format&fit=crop&q=80&w=800" "furnsings/furnishing5.jpg"
Download "https://images.unsplash.com/photo-1651109715823-b5c3c76f2690?auto=format&fit=crop&q=80&w=800" "furnsings/furnishing6.jpg"
