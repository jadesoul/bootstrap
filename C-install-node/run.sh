# https://nodejs.org/en/download

# Download and install nvm:
#curl -o install.sh https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.4/install.sh
bash install.sh

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"

# Download and install Node.js:
nvm install 24

# Verify the Node.js version:
node -v # Should print "v24.15.0".

# Verify npm version:
npm -v # Should print "11.12.1".

