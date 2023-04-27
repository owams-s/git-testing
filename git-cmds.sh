# global git configuration
git config --global user.name "je98994"
git config --global user.email "oluwaseun.owamokele@kbc.be"

# create project folder
mkdir AzureCloudDeploy
cd AzureCloudDeploy

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

