function history
    if test $(count $argv) -eq 0 -o "$argv[1]" = "search"
        builtin history --show-time="%F %T - " $argv
    else
        builtin history $argv
    end
end
