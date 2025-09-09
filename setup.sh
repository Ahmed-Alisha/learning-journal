#!/bin/bash
set -e

# Update and install python3-venv if missing
echo "🔄 Updating system and installing python3-venv..."
sudo apt update
sudo apt install -y python3-venv python3-pip

# # Go to home directory
# cd ~

# # Create project folder if not exists
# PROJECT_DIR="./learning-journal"
# if [ ! -d "$PROJECT_DIR" ]; then
#   echo "📁 Creating project folder at $PROJECT_DIR"
#   mkdir "$PROJECT_DIR"
# fi
# cd "$PROJECT_DIR"

# Create virtual environment if not exists
if [ ! -d ".venv" ]; then
  echo "🐍 Creating Python virtual environment..."
  python3 -m venv .venv
fi

# Activate venv
echo "✅ Activating virtual environment..."
source .venv/bin/activate

# Upgrade pip
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Install MkDocs and Material theme
echo "📦 Installing MkDocs and Material theme..."
pip install mkdocs mkdocs-material

echo "🎉 Setup complete!"
echo "👉 To start the server, run: source .venv/bin/activate && mkdocs serve"
