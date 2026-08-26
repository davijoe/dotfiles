if status is-interactive
    # Commands to run in interactive sessions can go here
end
export PATH="$HOME/.local/bin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/dan/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/dan/Downloads/google-cloud-sdk/path.fish.inc'; end
