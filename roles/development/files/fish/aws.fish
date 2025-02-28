# https://stackoverflow.com/questions/26981542/aws-cli-command-completion-with-fish-shell

function __fish_complete_aws
    env COMP_LINE=(commandline --current-process --cut-at-cursor) aws_completer | tr -d ' '
end

function __fish_complete_aws_profiles
    if test -f ~/.aws/config;
        grep --no-messages --only-matching --colour=never --perl-regexp '(?<=\[profile )(.+)(?=\])' ~/.aws/config
    end
end

complete --command aws --no-files --arguments "(__fish_complete_aws)"
complete --command set --condition "__fish_is_first_token" --arguments "AWS_PROFILE"
complete --command set --condition "__fish_contains_opt -s x and __fish_seen_subcommand_from AWS_PROFILE" --no-files --arguments "(__fish_complete_aws_profiles)"
