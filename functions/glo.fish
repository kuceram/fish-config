function glo
  git log -1 --pretty=format:'%C(yellow)%h %C(reset)%s %C(dim white)- %an' $argv
end
