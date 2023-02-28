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

**Pull Remote Branch to Local**
git switch <Remote branch>

**Delete Branch**
```
#delete local
git branch --delete branch-name
#delete remote
git push -u origin --delete branch-name
```

**Move Or Rename Folders**
git mv <source> <destination>

**Remove files from pull request**
git checkout origin/main -- <filepath>

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

