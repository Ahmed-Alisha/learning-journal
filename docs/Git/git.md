Got it 👍 I’ll convert this into a clean, structured **Markdown (.md)** with proper headings, bullet points, and code blocks for readability.

Here’s the formatted `.md` version:

````markdown
# Git & GitHub Notes

## GitHub GUI
- **GitKraken** (example Git GUI tool)

---

## Git Repository
- A **Git Repo** is a workspace that tracks and manages files within a folder.

### Common Commands
```bash
git log              # Commit history
git log --oneline    # Prints first line of commit messages
git status           # Repository status
````

### Initialize a Repository

```bash
git init             # Create a new Git repo
```

* Creates a `.git` folder which stores all project history.
  ⚠️ **WARNING**: Do not init a repo inside another repo!
  (Use `git status` first to confirm.)

---

## Staging & Committing

```bash
git add <file>                       # Add files to staging
git commit -m "<message>"            # Commit staged changes
git commit -a -m "<message>"         # Stage all changes and commit
```

* `-m` → Single-line commit message.
* Use `git config core.editor_commands` for multi-line commit messages.

```bash
git commit --amend                   # Edit last commit (message or staged files)
```

### Workflow

* **Working Directory** → `git add` → **Staging Area** → `git commit` → **Repository**

---

## Best Practices

* **Atomic Commits**: Keep commits focused on a single feature/change/fix.
* **Commit Messages**: Use *present-tense imperative style*.

---

## .gitignore

* Use a `.gitignore` file to exclude files/folders from tracking.

---

## HEAD

* Refers to the branch pointer (the tip of the current branch or latest commit).

---

## Branching

### Create & Manage Branches

```bash
git branch                 # List all branches
git branch <name>          # Create a new branch from HEAD
git switch <name>          # Switch to a branch
git switch -c <name>       # Create and switch to a branch
```

### Delete / Rename Branches

```bash
git branch -d <name>       # Delete branch
git branch -D <name>       # Force delete branch
git branch -m <new-name>   # Rename branch
```

### Merge Branches

```bash
git merge <branch>
```

### Checkout by Commit

```bash
git checkout <commit-hash>
git checkout -b <new-branch>
```

---

## Cloning a Repository

```bash
git clone <repo-url>         # Clone GitHub repo to local
git branch                   # List local branches
git checkout -b <branch>     # Create and switch to new branch
```

---

## Push Changes to GitHub

```bash
git add .                           # Stage all changes
git commit -m "<message>"           # Commit changes
git push -u origin <branch_name>    # Push to remote GitHub
```

---

## Create a Pull Request (on GitHub)

1. Go to **Pull Requests** tab.
2. Select `base: main` & `compare: <your_branch>`.
3. Click **Create pull request**.

---

## Update Main Repo Locally

```bash
git fetch origin
git checkout main     # optional
git pull origin main
```

---

## Remote Repositories

```bash
git remote -v
```

---

## Stashing

```bash
git stash                  # Save current changes
git stash pop              # Apply and drop latest stash
git stash apply            # Apply stash without dropping
git stash list             # List all stashes
git stash drop <stash-id>  # Delete a stash (ex: stash@{2})
git stash clear            # Clear all stashes
```


