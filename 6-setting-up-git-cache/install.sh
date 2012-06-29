git config --global user.name "`cat name`"
# Sets the default name for git to use when you commit

git config --global user.email "`cat email`"
# Sets the default email for git to use when you commit

git config --global credential.helper cache
# Set git to use the credential memory cache

git config --global credential.helper 'cache --timeout=360000'
# Set the cache to timeout after 1 hour (setting is in seconds)