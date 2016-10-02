#setup remote repo
- ssh git@example.com
- mkdir my_project.git
- cd my_project.git
- git init --bare
- git update-server-info
- exit

#Setup on Local Machine
- cd <my_project>
- git init
- git add *
- git commit -m "message"
- git remote add origin git@example.com:my_project.git
- git push -u origin master

#Branches
- To create a new branch to work in type : git checkout -b <new_branch_name>
- To switch branch, type : git checkout <branch_name>

#Update files to most recent from Git
- git checkout master
- git fetch
- git pull --ff-only

#Rebasing
##Used to bring a branch up to date with another, usually master
- save progress using: git stash
- on head branch(probably master): git fetch
- git checkout master
- git pull
- rebase your branch: git checkout <your_branch>
- git rebase master
- git stash pop

#Committing new code to git hub
- check all changed or created files using: git status
- in order to commit files, first stage them using: git add <file_name>
- you can also add all files with: git add . --all
- once files have been staged, commit them using: git commit -m "<comments>"
- once the changes are committed the branch can be pushed to github using: git push origin <your_current_branch_name>
