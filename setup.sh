#!/bin/bash

echo "🔧 Starting setup..."

# Update & upgrade system
echo "📦 Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Install tools
echo "🛠️ Installing required tools..."

# Install Python & pip
sudo apt install -y python3 python3-pip

# Install SQLMap
if ! command -v sqlmap &> /dev/null; then
    echo "⚙️ Installing sqlmap..."
    sudo apt install -y sqlmap
fi

# Install Nmap
if ! command -v nmap &> /dev/null; then
    echo "⚙️ Installing nmap..."
    sudo apt install -y nmap
fi

# Install ffuf
if ! command -v ffuf &> /dev/null; then
    echo "⚙️ Installing ffuf..."
    sudo apt install -y ffuf
fi

# Install whatweb
if ! command -v whatweb &> /dev/null; then
    echo "⚙️ Installing whatweb..."
    sudo apt install -y whatweb
fi

# Install curl
if ! command -v curl &> /dev/null; then
    echo "⚙️ Installing curl..."
    sudo apt install -y curl
fi

# Create folder structure
echo "📁 Creating folders..."
mkdir -p targets scripts outputs screenshots wordlists

# Install Python dependencies (if any, add later to requirements.txt)
if [ -f "requirements.txt" ]; then
    echo "📜 Installing Python requirements..."
    pip3 install -r requirements.txt
fi

echo "✅ Setup complete!"
