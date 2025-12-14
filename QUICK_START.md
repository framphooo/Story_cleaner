# Quick Start Guide - How to Run the App

## Step 1: Open the Terminal

In Cursor (your code editor):
1. Look at the top menu bar
2. Click **Terminal** → **New Terminal**
   - OR press `Ctrl + ~` (Windows/Linux) or `Cmd + ~` (Mac)
   - OR click the "Terminal" tab at the bottom of the screen

You should see a black or white window with a prompt like:
```
your-username@your-computer Story_cleaner %
```

## Step 2: Make Sure You're in the Right Folder

The terminal should already be in the right place (Story_cleaner), but let's check:

Type this and press Enter:
```bash
pwd
```

You should see something like:
```
/Users/framphoo/Desktop/Story_cleaner
```

If you're NOT in the right folder, type:
```bash
cd /Users/framphoo/Desktop/Story_cleaner
```

## Step 3: Check if Python is Installed

Type this and press Enter:
```bash
python3 --version
```

You should see something like:
```
Python 3.9.7
```

If you see an error, you need to install Python first. Let me know and I'll help!

## Step 4: Install the Required Packages

Type this and press Enter (this might take 1-2 minutes):
```bash
pip3 install -r requirements.txt
```

You'll see a bunch of text scrolling by as it downloads and installs packages. Wait until you see your prompt again (the `%` or `$` sign).

**If you get a "permission denied" error**, try:
```bash
pip3 install --user -r requirements.txt
```

## Step 5: Run the App!

Type this and press Enter:
```bash
streamlit run app_streamlit.py
```

You should see something like:
```
  You can now view your Streamlit app in your browser.

  Local URL: http://localhost:8501
  Network URL: http://192.168.x.x:8501
```

## Step 6: Open the App in Your Browser

The app should automatically open in your browser. If it doesn't:
1. Look for the URL in the terminal (usually `http://localhost:8501`)
2. Copy that URL
3. Paste it into your web browser's address bar
4. Press Enter

You should see the "Spreadsheet Normalizer" app!

## Step 7: Using the App

1. Click "Choose an Excel file" and select a `.xlsx` file
2. Choose your output format (Excel, CSV, or Both)
3. Click the "Normalize" button
4. Wait for processing (might take a few seconds)
5. Review the results and download your files!

## To Stop the App

When you're done:
1. Go back to the terminal
2. Press `Ctrl + C` (or `Cmd + C` on Mac)
3. This stops the app

## Troubleshooting

**"command not found" errors:**
- Make sure you're typing commands exactly as shown
- Check that you're in the right folder (use `pwd`)

**"No module named 'streamlit'" error:**
- Try: `pip3 install streamlit pandas openpyxl`

**Port already in use:**
- Another app might be running. Try: `streamlit run app_streamlit.py --server.port 8502`

**Still stuck?**
- Copy the error message and ask for help!
