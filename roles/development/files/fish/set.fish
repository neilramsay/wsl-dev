function __fish_complete_aws_profiles
    env COMP_LINE="aws --profile " aws_completer
end

complete --command set --condition "__fish_is_first_token" --arguments "AWS_PROFILE"
complete --command set --condition "__fish_contains_opt -s x and __fish_seen_subcommand_from AWS_PROFILE" --no-files --arguments "(__fish_complete_aws_profiles)"
