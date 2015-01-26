function glo
  git log --pretty=format:'%C(yellow)%h %C(reset)%s %C(dim white)- %an' $argv
end
