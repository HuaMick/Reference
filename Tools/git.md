### Git

---
**Configure Git**

```
#Setup git to use vs code as the editor
git config --global core.editor "code --wait"
#Set Username and Email
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "MY_NAME@example.com"

```

**Initalize Repository**
*Make sure you have setup .gitignore else better to add files individually*

```
#initalise git by creating a .git folder
git init
#Add all files in folder to be tracked by git
git add .
#Commit the files
git commit --all
#add remote repository address
git remote {add/set-url} origin http://github.com/HuaMick/...
```

**Clone Repository**
```
#Clone the Repo at URL
git clone https://bitbucket.org/user/sourcerepo.git
#Add all files to tracking
git add .
#Update Repo's remote repository
git remote set-url origin http://github.com/HuaMick/20220813_LouderTask
```

**Merge Remote with Local**
```
#add remote repository address
git remote {add/set-url} origin git@bitbucket.org:louder/airflow.git
#pull the remote content, allow unrelated history
git pull origin main --allow-unrelated-histories
```

**New Feature Branch**
```
#Reset to main
git checkout main
git fetch origin
git reset --hard origin/main
#Create a New Branch
git checkout -b feature/<new feature>
git push -u origin feature/<new feature>
```

**Git Worktree**
git worktree add ../worktree/feature/LOAU-62-Airflow-DAG-revenue feature/LOAU-62-Airflow-DAG-revenue

**Pull / Get / Copy**
Pull branch from remote: `git switch <Remote branch>`

Copy file from another branch: `git checkout <branch> -- <filepath>`


**Delete**
Delete branch
    - local: `git branch --delete <branch-name>`
    - remote: `git push -u origin --delete <branch-name>`
    - local matching pattern: `git branch | grep "<pattern>" | xargs git branch -D`



**Move / Rename**
git mv <source> <destination>

Rename branch
    - local: `git branch -m <old-name> <new-name>`
    - remote:
        1. Delete old remote: `git push origin --delete <old-name>`
        2. Add remote with new name: `git push origin -u <new-name>`

**Reset File**
Reset File to latest branch: git checkout -- <filepath>
Reset File to main:  git checkout origin/main -- <filepath>

Discard unstaged changes: git restore <file>



**Remove File**
Delete file: git rm <filepath>


**Diagnostics** :
```
#show file status (shortform)
git status -s
#show full url of remote repo
git remote --verbose
#show all branches
git branch -a

```

**Notes**
```
#Origin is the default alias given to a local repo
```

**Commit**
Combine with previous: git commit --amend