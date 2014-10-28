function gclean
  git checkout $argv
  git pull origin $argv
  git branch --merged $argv | grep -v "master\|develop" | xargs -n 1 git branch -d
end
