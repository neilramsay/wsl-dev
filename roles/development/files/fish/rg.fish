function grep --wraps grep
    rg $argv
end

complete --command grep --wraps rg
