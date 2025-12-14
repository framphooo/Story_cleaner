# Pre-Deployment Checklist

Use this checklist before deploying to ensure everything is ready.

## ✅ Files Ready

- [x] `app_streamlit.py` - Main Streamlit application
- [x] `clean_for_snowflake.py` - Core processing engine
- [x] `requirements.txt` - All dependencies listed
- [x] `.streamlit/config.toml` - Streamlit configuration
- [x] `.gitignore` - Excludes unnecessary files
- [x] `README.md` - Project documentation

## ✅ Code Checks

- [x] No hardcoded absolute paths (uses relative paths)
- [x] All imports are in `requirements.txt`
- [x] Temporary directories created dynamically (`temp_jobs/`, `feedback/`)
- [x] No local file dependencies that won't exist in cloud

## ✅ Before Pushing to GitHub

1. **Test locally first:**
   ```bash
   streamlit run app_streamlit.py
   ```
   Make sure it works on your machine!

2. **Check Git status:**
   ```bash
   git status
   ```
   Make sure only necessary files are staged (not `.venv/`, `temp_jobs/`, etc.)

3. **Verify .gitignore is working:**
   ```bash
   git status
   ```
   You should NOT see:
   - `.venv/`
   - `temp_jobs/`
   - `feedback/`
   - `__pycache__/`
   - `*.pyc`

## ✅ GitHub Setup

- [ ] GitHub account created
- [ ] Repository created (public for free Streamlit hosting)
- [ ] Code pushed to GitHub
- [ ] Personal Access Token created (for Git authentication)

## ✅ Streamlit Cloud Setup

- [ ] Signed in to Streamlit Community Cloud with GitHub
- [ ] App deployed
- [ ] App URL received and tested
- [ ] Shared with test users

## Common Issues to Watch For

### If deployment fails:
1. Check the deployment logs in Streamlit Cloud
2. Verify `app_streamlit.py` is in the root directory
3. Check that `requirements.txt` has all dependencies
4. Make sure Python version is compatible (3.8+)

### If app runs but has errors:
1. Check that file paths are relative (not absolute)
2. Verify all imports work
3. Check Streamlit logs for specific error messages

### If files aren't uploading:
1. Check file size limits (Streamlit has limits)
2. Verify file upload component is working
3. Check browser console for errors

---

**Ready to deploy?** Follow the steps in `DEPLOYMENT_GUIDE.md`!
