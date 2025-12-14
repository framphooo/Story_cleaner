# Troubleshooting: "Site Can't Be Reached"

## Step 1: Check if the app is actually running

Look at your terminal. After running `streamlit run app_streamlit.py`, you should see:

```
You can now view your Streamlit app in your browser.

Local URL: http://localhost:8501
Network URL: http://192.168.x.x:8501
```

**If you DON'T see this**, the app didn't start. Look for error messages in red.

## Step 2: Common errors and fixes

### Error: "ModuleNotFoundError: No module named 'streamlit'"
**Fix:** Run this in terminal:
```bash
pip3 install streamlit pandas openpyxl
```

### Error: "Address already in use"
**Fix:** Another app is using port 8501. Try a different port:
```bash
streamlit run app_streamlit.py --server.port 8502
```
Then use: `http://localhost:8502`

### Error: "ImportError" or "SyntaxError"
**Fix:** There's a code error. Copy the full error message and ask for help.

## Step 3: Make sure you're using the right URL

- ✅ **Correct:** `http://localhost:8501`
- ✅ **Also correct:** `http://127.0.0.1:8501`
- ❌ **Wrong:** `https://localhost:8501` (don't use https)
- ❌ **Wrong:** `localhost:8501` (missing http://)

## Step 4: Check if the terminal shows the app is running

The terminal should show something like:
```
2024-01-01 12:00:00.123 Starting...
2024-01-01 12:00:00.456 Running on http://localhost:8501
```

If you see errors instead, those are the problem.

## Step 5: Try these commands in order

1. **Stop the app** (if running): Press `Ctrl + C` in terminal

2. **Check Python version:**
```bash
python3 --version
```
Should show Python 3.8 or higher.

3. **Reinstall packages:**
```bash
pip3 install --upgrade streamlit pandas openpyxl
```

4. **Try running again:**
```bash
streamlit run app_streamlit.py
```

5. **If still not working, try verbose mode:**
```bash
streamlit run app_streamlit.py --logger.level=debug
```

## Step 6: What to share if you need help

Copy and paste:
1. The exact command you ran
2. The full error message from terminal
3. What you see when you try to open the URL

## Quick test: Is Streamlit working at all?

Try this simple test:
```bash
streamlit hello
```

This should open a demo app. If this doesn't work, Streamlit isn't installed correctly.
