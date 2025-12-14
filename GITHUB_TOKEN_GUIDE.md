# Create GitHub Personal Access Token

## Why You Need This

GitHub requires a Personal Access Token instead of your password for security. This is a one-time setup.

## Step-by-Step Instructions

### Step 1: Go to GitHub Settings
1. Go to [github.com](https://github.com) and make sure you're logged in
2. Click your **profile picture** (top right corner)
3. Click **Settings**

### Step 2: Navigate to Developer Settings
1. Scroll down the left sidebar
2. Click **Developer settings** (near the bottom)

### Step 3: Create Token
1. Click **Personal access tokens** → **Tokens (classic)**
2. Click **Generate new token** → **Generate new token (classic)**
3. Fill in the form:
   - **Note**: `Streamlit Deployment` (or any name you like)
   - **Expiration**: Choose how long (90 days is good, or "No expiration" if you prefer)
   - **Select scopes**: Check the box for **`repo`** (this gives full repository access)
4. Scroll down and click **Generate token**

### Step 4: Copy the Token
⚠️ **IMPORTANT**: Copy the token immediately! It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`

You won't be able to see it again after you leave this page!

### Step 5: Use the Token
When you run `git push`, it will ask for:
- **Username**: `framphooo` (your GitHub username)
- **Password**: Paste your **Personal Access Token** (not your actual password!)

---

## Quick Link

You can also go directly to: https://github.com/settings/tokens

---

## After Creating the Token

Once you have your token, come back and we'll push your code to GitHub!
