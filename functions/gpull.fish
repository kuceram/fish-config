function gpull
    if [ $argv ]
        git pull $argv
    else
        git pull upstream develop
    end
end
