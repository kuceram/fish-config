function gpush
    if [ $argv ]
        git push $argv
    else
        git push origin develop
    end
end
