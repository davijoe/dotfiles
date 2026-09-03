if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket
    set -g fish_greeting
end

fish_add_path $HOME/.local/bin
zoxide init fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dan/Downloads/google-cloud-sdk/path.fish.inc' ]
    . '/home/dan/Downloads/google-cloud-sdk/path.fish.inc'
end
