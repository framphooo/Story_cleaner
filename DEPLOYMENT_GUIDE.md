# Deployment Guide: Getting Your App Online

This guide will walk you through deploying your Streamlit app to the web for free using Streamlit Community Cloud.

## Prerequisites

- A GitHub account (free) - [Sign up here](https://github.com/signup)
- Your code ready in this folder

## Step-by-Step Instructions

### Step 1: Create a GitHub Account (if you don't have one)

1. Go to [github.com](https://github.com)
2. Click "Sign up" in the top right
3. Follow the prompts to create your account
4. Verify your email address

### Step 2: Install Git (if not already installed)

**On macOS:**
- Git usually comes pre-installed
- To check, open Terminal and type: `git --version`
- If not installed, download from [git-scm.com](https://git-scm.com/download/mac)

### Step 3: Initialize Git in Your Project

1. Open Terminal (or your command line)
2. Navigate to your project folder:
   ```bash
   cd /Users/framphoo/Desktop/Story_cleaner
   ```

3. Initialize Git (if not already done):
   ```bash
   git init
   ```

4. Add all your files:
   ```bash
   git add .
   ```

5. Create your first commit:
   ```bash
   git commit -m "Initial commit: Spreadsheet Normalizer MVP"
   ```

### Step 4: Create a GitHub Repository

1. Go to [github.com](https://github.com) and log in
2. Click the **"+"** icon in the top right corner
3. Select **"New repository"**
4. Fill in the details:
   - **Repository name**: `spreadsheet-normalizer` (or any name you like)
   - **Description**: "A web app for normalizing Excel spreadsheets"
   - **Visibility**: Choose **Public** (required for free Streamlit hosting)
   - **DO NOT** check "Initialize with README" (we already have files)
5. Click **"Create repository"**

### Step 5: Connect Your Local Code to GitHub

After creating the repository, GitHub will show you commands. Use these:

1. In Terminal, make sure you're in your project folder:
   ```bash
   cd /Users/framphoo/Desktop/Story_cleaner
   ```

2. Add GitHub as a remote (replace `YOUR_USERNAME` with your actual GitHub username):
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/spreadsheet-normalizer.git
   ```

3. Push your code to GitHub:
   ```bash
   git branch -M main
   git push -u origin main
   ```

   **Note**: You'll be asked for your GitHub username and password. For password, you'll need to use a **Personal Access Token** (see below).

### Step 6: Create a Personal Access Token (for Git authentication)

GitHub requires a token instead of your password:

1. Go to GitHub → Click your profile picture (top right) → **Settings**
2. Scroll down to **Developer settings** (left sidebar)
3. Click **Personal access tokens** → **Tokens (classic)**
4. Click **Generate new token** → **Generate new token (classic)**
5. Give it a name: "Streamlit Deployment"
6. Select scopes: Check **`repo`** (this gives full repository access)
7. Click **Generate token**
8. **COPY THE TOKEN IMMEDIATELY** (you won't see it again!)
9. When Git asks for your password, paste this token instead

### Step 7: Deploy to Streamlit Community Cloud

1. Go to [share.streamlit.io](https://share.streamlit.io)
2. Click **"Sign up"** or **"Log in"**
3. Sign in with your **GitHub account** (use the same account you used in Step 1)
4. Click **"New app"**
5. Fill in the form:
   - **Repository**: Select your repository (`YOUR_USERNAME/spreadsheet-normalizer`)
   - **Branch**: `main` (or `master` if that's what you used)
   - **Main file path**: `app_streamlit.py`
   - **App URL**: Choose a unique name (e.g., `spreadsheet-normalizer`)
6. Click **"Deploy!"**

### Step 8: Wait for Deployment

- Streamlit will build and deploy your app (takes 2-5 minutes)
- You'll see a progress bar
- When done, you'll get a URL like: `https://spreadsheet-normalizer.streamlit.app`
- **Share this URL with anyone!** It's public and free.

## Updating Your App

Whenever you make changes:

1. Make your changes to the code
2. In Terminal:
   ```bash
   cd /Users/framphoo/Desktop/Story_cleaner
   git add .
   git commit -m "Description of your changes"
   git push
   ```
3. Streamlit will automatically detect the changes and redeploy (usually takes 1-2 minutes)

## Troubleshooting

### "Module not found" errors
- Make sure all dependencies are in `requirements.txt`
- Check that you're using the correct Python version (3.8+)

### "File not found" errors
- Make sure you're not trying to access files outside the app directory
- All file paths should be relative to the app root

### Deployment fails
- Check the deployment logs in Streamlit Cloud dashboard
- Make sure `app_streamlit.py` is in the root of your repository
- Verify `requirements.txt` exists and has all dependencies

### Can't push to GitHub
- Make sure you're using a Personal Access Token (not your password)
- Check that your repository name matches exactly

## Security Notes

- Your app will be **publicly accessible** (anyone with the URL can use it)
- Don't put any secrets, API keys, or sensitive data in your code
- If you need private data, consider Streamlit's paid plans or other hosting options

## Next Steps

Once deployed:
1. Test your app thoroughly
2. Share the URL with friends/colleagues for feedback
3. Monitor usage in the Streamlit dashboard
4. Consider adding analytics if needed

## Need Help?

- Streamlit Community Cloud docs: [docs.streamlit.io/streamlit-community-cloud](https://docs.streamlit.io/streamlit-community-cloud)
- GitHub help: [docs.github.com](https://docs.github.com)
- Streamlit forums: [discuss.streamlit.io](https://discuss.streamlit.io)

---

**Congratulations!** Your app is now live on the web! 🎉
