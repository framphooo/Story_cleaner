# Email Feedback Setup Guide

This guide explains how to configure email functionality so you receive feedback from users via email.

## How It Works

When users submit feedback through the app, it will be sent directly to your Gmail inbox at **framphooo@gmail.com**.

## Setup Instructions

To enable email functionality, you need to configure Gmail App Password credentials.

### Step 1: Enable 2-Factor Authentication on Gmail

1. Go to your Google Account: https://myaccount.google.com/
2. Click **Security** in the left sidebar
3. Under "Signing in to Google", find **2-Step Verification**
4. Follow the prompts to enable 2-Step Verification (if not already enabled)

### Step 2: Generate an App Password

1. Still in **Security** settings, find **2-Step Verification**
2. Scroll down and click **App passwords**
   - If you don't see this, make sure 2-Step Verification is enabled first
3. Select **Mail** as the app
4. Select **Other (Custom name)** as the device
5. Type a name like "Spreadsheet Normalizer" and click **Generate**
6. Google will show you a 16-character password (looks like: `abcd efgh ijkl mnop`)
7. **Copy this password** - you'll need it in the next step
   - Note: Remove the spaces when using it (it should be 16 characters without spaces)

### Step 3: Configure the App

#### Option A: Using Environment Variables (Local Development)

Open your terminal and set these environment variables:

```bash
export GMAIL_SENDER="framphooo@gmail.com"
export GMAIL_APP_PASSWORD="your_16_character_app_password"
```

To make this permanent (so you don't have to set it every time), add these lines to your `~/.zshrc` file (Mac) or `~/.bashrc` file (Linux):

```bash
export GMAIL_SENDER="framphooo@gmail.com"
export GMAIL_APP_PASSWORD="your_16_character_app_password"
```

Then restart your terminal or run:
```bash
source ~/.zshrc  # or source ~/.bashrc on Linux
```

#### Option B: Using Streamlit Secrets (For Streamlit Cloud Deployment)

1. In your Streamlit Cloud app, go to **Settings** → **Secrets**
2. Add the following to your secrets:

```toml
[feedback]
gmail_sender = "framphooo@gmail.com"
gmail_app_password = "your_16_character_app_password"
```

### Step 4: Test the Configuration

1. Run the app: `streamlit run app_streamlit.py`
2. Log in and click "Give feedback" in the header
3. Submit a test feedback message
4. Check your email inbox at **framphooo@gmail.com**
5. You should receive an email with subject "Feedback from Normalization App"

## Troubleshooting

**Email not sending?**
- Check that GMAIL_SENDER and GMAIL_APP_PASSWORD are set correctly
- Make sure you're using the App Password (not your regular Gmail password)
- Verify 2-Step Verification is enabled on your Gmail account
- Check the terminal for error messages

**"Authentication failed" error?**
- Double-check that the App Password is correct (16 characters, no spaces)
- Make sure you're using the email address that the App Password was generated for

**"Email not configured" message?**
- Verify environment variables are set: `echo $GMAIL_SENDER`
- Restart the Streamlit app after setting environment variables
- For Streamlit Cloud, make sure secrets are saved correctly

## Security Notes

- **Never commit App Passwords to Git** - they should only be in environment variables or Streamlit secrets
- App Passwords are specific to your Google account and can be revoked at any time
- If you suspect your App Password is compromised, revoke it and generate a new one from Google Account settings
