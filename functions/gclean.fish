function gclean
  git checkout $argv
  git pull upstream $argv
  git branch --merged $argv | grep -v "master\|develop" | xargs -n 1 git branch -d
end
