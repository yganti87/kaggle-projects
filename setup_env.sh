#!/bin/bash

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install -r requirements.txt

# Setup Kaggle API credentials if .env is present
if [ -f .env ]; then
  export $(cat .env | xargs)
  mkdir -p ~/.kaggle
  echo "{\"username\": \"$KAGGLE_USERNAME\", \"key\": \"$KAGGLE_KEY\"}" > ~/.kaggle/kaggle.json
  chmod 600 ~/.kaggle/kaggle.json
else
  echo "⚠️  .env file not found. Kaggle API will not be configured."
fi

# Launch Jupyter Lab
jupyter lab