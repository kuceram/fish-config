function gpull
    if [ $argv ]
        git pull $argv
    else
        git pull upstream master
    end
end
