# git commands

### undoing local changes

* Checking what was committed `$ git show $COMMIT`
* Undoing git add / Unstaging changes `$ git reset`
* Undoing a git reset `$ git reset 'HEAD@{1}'`
* Undoing last git commit `$ git reset HEAD^`
* Changing a specific git commit:
  * Rebase to the specific commit `$ git rebase --interactive 'hash^'`
  * Modify `pick` to `edit` in the line of the hash
  * Do the change in the files
  * Amend the changes `$ git commit --amend`
  * Go back to the HEAD `$ git rebase --continue`

### **stash and pop**

* For stashing current changes `$ git stash`
* To show what is stashed `$ git stash list` and `$ git stash show`
* For popping out the last stashed changes `$ git stash apply`
* Stash only un-staged changes `$ git stash save --keep-index`

### **adding main repo as upstream**

1. Make sure upstream is not configured yet `$ git remote -v`
2. Add upstream `$ git remote add upstream` [`https://github.com/main_repo/main_repo.git`](https://github.com/main_repo/main_repo.git)
3. Get upstream data `$ git fetch upstream`

### merging git branch into master

1. go to master `git checkout master`
2. make sure it is updated solving conflicts if they exist `git pull origin master`
3. merge with the branch \(list of branchs can be obtained by `git branch`\) `git merge branch_name`
4. push merged local repository `git push origin master`

### managing tags

* Creating a tag: `$ git tag -a vX.Y -m "message"`
* Pushing a tag: `$ git push origin vX.Y` or `$ git push origin --tags`

### go to a specific commit and back to latest master

1. go to specific commit `git checkout <sha>`
2. do the necessary job
3. make sure the local is updated `git pull origin master`
4. going back to master `git checkout master`

### cherry-picking - add a specific commit to another branch

1. Checkout the branch in which the commit will be added \(eg.: master\): `$ git checkout master`
2. Execute the cherry-pick `$ git cherry-pick <commit-hash>`

### permanently removing files from git

* Removing file from all branches \(replace PATH/TO/FILENAME\): `$ git filter-branch --force --index-filter 'git rm --cached --ignore-unmatch PATH/TO/FILENAME' --prune-empty --tag-name-filter cat -- --all`
* Remove old references `$ rm -rf .git/refs/original/`
* Prune garbage `$ git reflog expire --expire=now --all && git gc --aggressive --prune=now`

### checking staged diffs

* Checking staged diffs: `$ git diff --cached`

