# Security Setup Guide

## Password Configuration

Your app now has password protection enabled. **You MUST change the default password!**

### Option 1: Environment Variable (Recommended for Production)

Set the password using an environment variable. This keeps it out of your code.

**For Streamlit Cloud:**
1. Go to your app on [share.streamlit.io](https://share.streamlit.io)
2. Click on your app → "Settings" → "Secrets"
3. Add this to the secrets:
```toml
[security]
password = "YourSecurePassword123!"
```

Then update the code to read from secrets:
```python
APP_PASSWORD = st.secrets.get("security", {}).get("password", "ChangeMe123!")
```

**For Local Development:**
```bash
export APP_PASSWORD="YourSecurePassword123!"
streamlit run app_streamlit.py
```

### Option 2: Direct Code Change (Quick but Less Secure)

Edit `app_streamlit.py` and change this line:
```python
APP_PASSWORD = os.getenv("APP_PASSWORD", "ChangeMe123!")  # Change "ChangeMe123!" to your password
```

⚠️ **Warning**: Don't commit passwords to GitHub! Use environment variables or Streamlit secrets.

## Security Features Enabled

✅ **Password Authentication**: Users must enter password to access the app
✅ **Rate Limiting**: Maximum 20 processing requests per hour per session
✅ **Secure File Deletion**: Original uploaded files are deleted immediately after processing
✅ **Session Cleanup**: Temporary files are cleaned up when session ends
✅ **Automatic Cleanup**: Old temp files (>1 hour) are automatically removed

## Rate Limiting

- **Limit**: 20 processing requests per hour per session
- **Window**: 1 hour rolling window
- **Message**: Users see a message if they exceed the limit

To adjust the limit, edit these values in `app_streamlit.py`:
```python
MAX_REQUESTS_PER_HOUR = 20  # Change this number
RATE_LIMIT_WINDOW = 3600    # Time window in seconds (3600 = 1 hour)
```

## File Cleanup

Files are cleaned up in this order:
1. **Immediate**: Original uploaded files deleted right after processing
2. **Session End**: All temp files cleaned when user logs out or session ends
3. **Automatic**: Files older than 1 hour are automatically removed

## Logout

Users can click the "🔒 Logout" button in the header to:
- End their session
- Clean up all temporary files
- Return to login screen

## Best Practices

1. **Use Strong Passwords**: At least 12 characters, mix of letters, numbers, symbols
2. **Change Default Password**: Never use "ChangeMe123!" in production
3. **Use Environment Variables**: Keep passwords out of code
4. **Regular Updates**: Change password periodically
5. **Monitor Usage**: Check Streamlit logs for suspicious activity

## Troubleshooting

**"Rate limit exceeded" message:**
- Wait for the time window to expire (shown in message)
- Or adjust `MAX_REQUESTS_PER_HOUR` if needed

**Files not cleaning up:**
- Check that `temp_jobs/` directory has write permissions
- Old files (>1 hour) are cleaned automatically on next app run

**Can't login:**
- Verify password is set correctly
- Check environment variable is set (if using that method)
- Check Streamlit secrets (if using Streamlit Cloud)
