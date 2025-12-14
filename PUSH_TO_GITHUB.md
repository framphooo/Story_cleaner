# Push Your Code to GitHub - Step by Step

## Step 1: Configure Git (One-Time Setup)

Open Terminal and run these commands. **Replace with your actual name and email:**

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

**Important:** Use the **same email** you used to create your GitHub account!

### Example:
```bash
git config --global user.name "Framphoo"
git config --global user.email "your-email@gmail.com"
```

## Step 2: Initialize Git in Your Project

Run these commands in Terminal (one at a time):

```bash
cd /Users/framphoo/Desktop/Story_cleaner
git init
git add .
git commit -m "Initial commit: Spreadsheet Normalizer MVP"
```

## Step 3: Connect to GitHub and Push

Based on your screenshot, your repository URL is:
`https://github.com/framphooo/Story_cleaner.git`

Run these commands:

```bash
git remote add origin https://github.com/framphooo/Story_cleaner.git
git branch -M main
git push -u origin main
```

**Note:** When it asks for your password, you'll need to use a **Personal Access Token** (not your GitHub password). See Step 4 below.

## Step 4: Create Personal Access Token (for authentication)

GitHub requires a token instead of your password:

1. Go to GitHub.com → Click your profile picture (top right) → **Settings**
2. Scroll down to **Developer settings** (left sidebar, near bottom)
3. Click **Personal access tokens** → **Tokens (classic)**
4. Click **Generate new token** → **Generate new token (classic)**
5. Give it a name: "Streamlit Deployment"
6. Select expiration: Choose how long you want it to last (90 days is good)
7. Select scopes: Check **`repo`** (this gives full repository access)
8. Click **Generate token** at the bottom
9. **COPY THE TOKEN IMMEDIATELY** (you won't see it again!)
10. When Git asks for your password during `git push`, paste this token instead

## Step 5: Verify It Worked

After pushing, refresh your GitHub repository page. You should see all your files there!

## Troubleshooting

**If you get "authentication failed":**
- Make sure you're using a Personal Access Token (not your password)
- Double-check the token has `repo` scope selected

**If you get "remote origin already exists":**
- Run: `git remote remove origin`
- Then run the `git remote add origin` command again

**If you get "failed to push some refs":**
- Make sure your repository is empty on GitHub (or use `git push -u origin main --force` - but be careful!)

---

## Next: Deploy to Streamlit Cloud

Once your code is on GitHub, go to [share.streamlit.io](https://share.streamlit.io) and follow the deployment steps!
