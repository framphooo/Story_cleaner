#!/bin/bash
# Helper script to restart Streamlit with cache clearing

echo "🛑 Stopping any running Streamlit processes..."
pkill -f "streamlit run" 2>/dev/null
sleep 2

echo "🧹 Clearing caches..."
cd "$(dirname "$0")"
rm -rf .streamlit/cache 2>/dev/null
rm -rf __pycache__ 2>/dev/null
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null
find . -type f -name "*.pyc" -delete 2>/dev/null

echo "🚀 Starting Streamlit..."
streamlit run app_streamlit.py --server.headless=true --server.port=8501
