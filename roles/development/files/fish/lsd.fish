function ls --wraps ls
    lsd --classify $argv
end

function tree --wraps tree
    lsd --tree  --classify $argv
end

complete --command ls --wraps lsd
