# global git configuration
git config --global user.name "je98994"
git config --global user.email "oluwaseun.owamokele@kbc.be"

# create project folder
mkdir AzureCloudDeploy
cd AzureCloudDeploy

# rename the 'master' branch to 'main'
git branch -m master main

# initialize empty git repository
git init

# check git status
git status

# add file(s) to git [staging file(s)]
git add <filename> #<filename> to be replaced by file in folder recently edited/modified/created.
git add --all #to stage all files in current working directory

# concise reponse of status report
git status --short 

# Commit the staged files after you're done
git commit -m "First release of AzureCloudDeploy"

# To commit without staging
git commit -a -m "Updated <file> with a new function..."

# To create a new "branch" from the main "master" repo
git branch new-deploy-resources

# To view all branches, including the master
git branch

# To switch to another branch called "new-deploy-resources"
git checkout new-deploy-resources

# Merge master branch with the "new-deploy-resources"
git checkout master # switch to master branch first
git merge new-deploy-resources

# To delete the "new-deploy-resources" branch
git branch -d new-deploy-resources

# To clone a remote repo
git clone <git url>

# To clone a remote repo to a specific folder
git clone <git url> <folder name>

# To add a remote repo to the local repo
git remote add origin https://github.com/owams-s/git-testing.git

# To rename origin remote to an "alias"
git remote rename origin <alias>

# To get all the change history of the origin
git fetch origin

# To push local repo to remote repo [Make sure that the default branch of the remote repo is named to match the local]
git push --set-upstream origin master

# "PULL" combines both "fetch" and "merge" cmds
git pull origin

# PULL a branch from remote repo
git branch -a
git checkout <name of remote branch>
git pull
git branch

# Create a new branch and switch to it immediately
git checkout -b <name of new local branch>

# PUSH new local branch to remote repo
git push origin <name of local branch>

# Revert to the latest "commit" and making it a new "commit"
git log --oneline
git revert HEAD --no-edit

# Revert to a previous "commit" and ignore the changes made after that commit
git reset <commithash>
git log --oneline # To check that commits after the selected one are removed from the log

# To correct the last commit message
git log --oneline
git commit --amend -m "<new message>"
git log --oneline