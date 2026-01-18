import os
import requests

categories = {
    "mensformal": [
        "https://images.unsplash.com/photo-1594932224012-7014197e44e2?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1598033129183-c4f50c7176c8?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1593032465175-481ac7f401a0?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1507679799987-c71177962645?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1591011831838-898492065886?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1589310243389-96a5483213a8?auto=format&fit=crop&q=80&w=800"
    ],
    "menscasual": [
        "https://images.unsplash.com/photo-1516762689617-e1cff932993d?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1488161628813-24476839304a?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1520975661595-6453be3f7070?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&q=80&w=800"
    ],
    "mensethnic": [
        "https://images.unsplash.com/photo-1583089892943-e02e5b017b6a?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1620608552086-538012675684?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1621612053648-73546747d961?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1567113463300-102570d28d73?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1574044536246-34079836934c?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1631557008104-5e58933b45a2?auto=format&fit=crop&q=80&w=800"
    ],
    "dressmaterials": [
        "https://images.unsplash.com/photo-1624445161042-45a704eeb64b?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1528459801416-a7e99a0def3b?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1544441893-675973e31985?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1606131731446-5568d8139580?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1558486012-817176f84c6d?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1617627143750-d86bc21e42bb?auto=format&fit=crop&q=80&w=800"
    ],
    "partywear": [
        "https://images.unsplash.com/photo-1613424935149-c8efd5c41e91?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1583039949165-96ee24b0d8de?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1568252542512-9fe8fe9c87bb?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1574868843985-6caab2f9e64c?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1554787497-98caae0f95df?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1589212987511-4a924cb9d8ac?auto=format&fit=crop&q=80&w=800"
    ],
    "women_ethnic": [
        "https://images.unsplash.com/photo-1746372283841-dbb3838f9935?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1724856605022-106d6dd6e842?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1574847872646-abff244bbd87?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1668371679302-a8ec781e876e?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1619715613791-89d35b51ff81?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1649930055986-ca57250a7fd4?auto=format&fit=crop&q=80&w=800"
    ],
    "lingirie": [
        "https://images.unsplash.com/photo-1642761491136-7dd93cb8810c?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1597926575502-b4d538ae9e97?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1594631763695-46808aaa5a6a?auto=format&fit=crop&q=80&w=800"
    ],
    "sarees": [
        "https://images.unsplash.com/photo-1664636404761-d3aa86169911?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1704927768472-f0065cb4b9e4?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1633686594317-7636307ec466?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1692992193981-d3d92fabd9cb?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1756376748126-f3a50445b5e6?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1616756351484-798f37bdffa0?auto=format&fit=crop&q=80&w=800"
    ],
    "kids": [
        "https://images.unsplash.com/photo-1667846541827-4d5ba7806798?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1641745921155-6e62d2cd4131?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1622290319146-7b63df48a635?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1569974641446-22542de88536?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1648111144134-0a34fca7a632?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1642597383617-922e83b2f459?auto=format&fit=crop&q=80&w=800"
    ],
    "wintercollection": [
        "https://images.unsplash.com/photo-1766048282908-d424712e674a?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1762232975039-7b36432bcac6?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1766957428038-2cb9ac1e2dd8?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1598283000505-3c51fc6090ff?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1604644401890-0bd678c83788?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1644085078094-29e8cb70125f?auto=format&fit=crop&q=80&w=800"
    ],
    "furnsings": [
        "https://images.unsplash.com/photo-1675621926040-b514257d5941?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1689626698503-47934d011285?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1754613411985-1a1606c6023e?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1767590518755-0e4bd5404e1f?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1714285329269-38643d9198c9?auto=format&fit=crop&q=80&w=800",
        "https://images.unsplash.com/photo-1738928283447-f4d21a4c84f0?auto=format&fit=crop&q=80&w=800"
    ]
}

headers = {
    "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36"
}

def download_images():
    for cat, urls in categories.items():
        if not os.path.exists(cat):
            os.makedirs(cat)
        
        prefix = {
            "mensformal": "formal",
            "menscasual": "casual",
            "mensethnic": "ethnic",
            "dressmaterials": "dress",
            "partywear": "party",
            "women_ethnic": "wethnic",
            "lingirie": "bra",
            "sarees": "saree",
            "kids": "kids",
            "wintercollection": "winter",
            "furnsings": "furnishing"
        }.get(cat, "img")

        for i, url in enumerate(urls):
            dest_file = os.path.join(cat, f"{prefix}{i+1}.jpg")
            try:
                print(f"Downloading {url} to {dest_file}...")
                response = requests.get(url, headers=headers, timeout=10)
                if response.status_code == 200:
                    with open(dest_file, "wb") as f:
                        f.write(response.content)
                    print("Success.")
                else:
                    print(f"Failed: {response.status_code}")
            except Exception as e:
                print(f"Error: {e}")

if __name__ == "__main__":
    download_images()
