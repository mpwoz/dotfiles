# Current and master branches
branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
master="mainline"

# Sync mainline branch from repo
git fetch origin $master:$master

# Merge into mainline
git rebase $master \
&& git checkout $master \
&& git merge $branch

# Push
git push

# Delete branch
git branch -d $branch


