function gpull
    if [ $argv ]
        git push $argv
    else
        git push origin develop
    end
end
