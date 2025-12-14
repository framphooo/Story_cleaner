#!/bin/bash
# Quick start script for the Streamlit app

# Kill any existing Streamlit processes on port 8501
lsof -ti:8501 | xargs kill -9 2>/dev/null || true

# Wait a moment
sleep 1

# Set password (change this to your desired password)
export APP_PASSWORD="test123"

# Run the app
cd /Users/framphoo/Desktop/Story_cleaner
streamlit run app_streamlit.py
