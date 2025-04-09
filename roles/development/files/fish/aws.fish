# https://stackoverflow.com/questions/26981542/aws-cli-command-completion-with-fish-shell

function __fish_complete_aws
    env COMP_LINE=(commandline --current-process --cut-at-cursor) aws_completer
end

complete --command aws --no-files --arguments "(__fish_complete_aws)"
