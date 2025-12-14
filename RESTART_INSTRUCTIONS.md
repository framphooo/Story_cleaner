# How to Restart Streamlit and Clear Cache

If changes aren't showing up in your Streamlit app, follow these steps:

## Quick Restart (Recommended)

1. **Stop Streamlit**: Press `Ctrl+C` in the terminal where Streamlit is running, or run:
   ```bash
   pkill -f "streamlit run"
   ```

2. **Clear Browser Cache**: 
   - **Chrome/Edge**: Press `Ctrl+Shift+Delete` (Windows/Linux) or `Cmd+Shift+Delete` (Mac)
   - Select "Cached images and files"
   - Click "Clear data"
   - Or do a hard refresh: `Ctrl+Shift+R` (Windows/Linux) or `Cmd+Shift+R` (Mac)

3. **Restart Streamlit**:
   ```bash
   ./restart_streamlit.sh
   ```
   Or manually:
   ```bash
   streamlit run app_streamlit.py
   ```

## Manual Cache Clearing

If the quick restart doesn't work:

```bash
# Stop Streamlit
pkill -f "streamlit run"

# Clear all caches
rm -rf .streamlit/cache
rm -rf __pycache__
find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null
find . -type f -name "*.pyc" -delete

# Restart
streamlit run app_streamlit.py
```

## Browser Hard Refresh

After restarting Streamlit, **always do a hard refresh** in your browser:
- **Windows/Linux**: `Ctrl + Shift + R` or `Ctrl + F5`
- **Mac**: `Cmd + Shift + R`

## If Still Not Working

1. Close all browser tabs with the Streamlit app
2. Clear browser cache completely (see above)
3. Restart Streamlit
4. Open a new incognito/private window and navigate to `http://localhost:8501`

## Testing the Expander Fix

To verify the expander fix is working:
1. Upload a file and process it
2. Look for expandable sections (Info, Warnings, Errors)
3. You should see:
   - **▼** (down arrow) on the RIGHT when collapsed
   - **▲** (up arrow) on the RIGHT when expanded
   - NO text like "keyboard_arrow_right" visible
   - NO text overlap

If you still see Material Icons text overlapping, the fix hasn't loaded. Do a hard browser refresh.
