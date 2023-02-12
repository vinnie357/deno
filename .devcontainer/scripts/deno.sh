#!/bin/bash
echo "=====install deno====="
set -e
# Ensure apt is in non-interactive to avoid prompts
export DEBIAN_FRONTEND=noninteractive
# install unzip for deno installer
sudo apt-get update && sudo apt-get install -y \
unzip
# install deno globally
curl -fsSL https://deno.land/install.sh | sudo DENO_INSTALL=/usr/local sh
# create dir for completionms if it doesn't exist
sudo mkdir -p /usr/local/etc/bash_completion.d/
# create completions
deno completions bash | sudo tee /usr/local/etc/bash_completion.d/deno.bash
# add completion to bashrc for current user
echo  'source /usr/local/etc/bash_completion.d/deno.bash' >> ~/.bashrc
echo "==== deno done ===="
