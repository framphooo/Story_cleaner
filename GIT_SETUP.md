# Git Setup Guide

Git is already installed on your Mac! ✅

Now you just need to configure it with your name and email. This information will be attached to your commits.

## Step 1: Configure Git

Open Terminal and run these commands (replace with your actual name and email):

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

**Important:** Use the **same email** that you'll use for your GitHub account!

### Example:
```bash
git config --global user.name "John Doe"
git config --global user.email "john.doe@gmail.com"
```

## Step 2: Verify Configuration

Check that it worked:
```bash
git config --global user.name
git config --global user.email
```

You should see your name and email printed back.

## Step 3: Initialize Your Project

Now you're ready to set up Git in your project:

```bash
cd /Users/framphoo/Desktop/Story_cleaner
git init
git add .
git commit -m "Initial commit: Spreadsheet Normalizer MVP"
```

## What's Next?

After configuring Git, follow the steps in `DEPLOYMENT_GUIDE.md` to:
1. Create a GitHub repository
2. Push your code
3. Deploy to Streamlit Cloud

---

**Note:** If you're not sure what email to use, use the one you'll sign up for GitHub with. This helps GitHub link your commits to your account.
