# Testing Locally - Quick Guide

## Step 1: Set Your Password

Open Terminal and run:

```bash
cd /Users/framphoo/Desktop/Story_cleaner
export APP_PASSWORD="YourPassword123!"
```

**Or set it for this session only:**
```bash
export APP_PASSWORD="test123"
streamlit run app_streamlit.py
```

## Step 2: Run the App

```bash
streamlit run app_streamlit.py
```

The app will open in your browser at `http://localhost:8501`

## Step 3: Test Security Features

### Test Authentication
1. You should see a login screen
2. Enter the wrong password → Should see error
3. Enter the correct password (the one you set in `APP_PASSWORD`) → Should access app

### Test File Processing
1. Upload an Excel file
2. Click "Normalize"
3. Wait for processing to complete
4. Download the results

### Test Rate Limiting
1. Process multiple files quickly (click "Normalize" 20+ times)
2. After 20 requests, you should see: "Rate limit exceeded. Please wait X minutes..."

### Test Logout
1. Click the "🔒 Logout" button in the header
2. Should return to login screen
3. Temp files should be cleaned up

### Test File Cleanup
1. After processing, check the `temp_jobs/` folder
2. The original uploaded file should be deleted
3. Only output files (cleaned Excel/CSV) should remain

## Quick Test Script

Run this in Terminal to test everything:

```bash
# Set password
export APP_PASSWORD="test123"

# Run app
streamlit run app_streamlit.py
```

Then in your browser:
- Login with: `test123`
- Upload a file and test!

## Troubleshooting

**"Can't login":**
- Make sure you set `APP_PASSWORD` before running streamlit
- Check the password matches exactly (case-sensitive)

**"Rate limit not working":**
- Try processing more than 20 files
- Check browser console for errors

**"Files not deleting":**
- Check `temp_jobs/` folder exists and has write permissions
- Original files should be deleted immediately after processing

**App won't start:**
- Make sure you're in the correct directory
- Check all dependencies are installed: `pip install -r requirements.txt`
