# alias for push and pull-request using hub https://github.com/github/hub
# TODO - pick the issue number from the branch name i.e. feature-branch#152
# TODO - confirm issue number than
# TODO - find out tadodotcom name
function gp
  set -l BRANCH (git rev-parse --abbrev-ref HEAD)
  set -l REMOTE (git remote -v | grep upstream | grep fetch | awk '{print $2}' | cut -d':' -f2 | cut -d'/' -f1)
  set -l ISSUE (git rev-parse --abbrev-ref HEAD | sed 's/^[^#]*#//g')
  git push origin $BRANCH
  hub pull-request -b $REMOTE:develop -i $ISSUE
  git checkout develop
  git branch -D $BRANCH
end
