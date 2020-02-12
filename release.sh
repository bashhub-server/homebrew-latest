#! /usr/bin/env zsh

set -eo pipefail

url="https://api.github.com/repos/nicksherron/bashhub-server/releases/latest"

new_version=$(curl -s $url |  awk '/tag_name/{gsub("v","",$2); gsub(",","",$2); print "version", $2}')
old_version=$(rg -NIo 'version "[0-9.]{5}"'  Formula/bashhub-server.rb)

linux=$(rg -o  'https://.*linux_amd64.tar.gz' Formula/bashhub-server.rb)
darwin=$(rg -o  'https://.*darwin_amd64.tar.gz' Formula/bashhub-server.rb)
new_linux=$(curl -s $url | rg -o  'https://.*linux_amd64.tar.gz' )
new_darwin=$(curl -s $url | rg -o  'https://.*darwin_amd64.tar.gz')
old_darwin_sha=$(rg -oI 'sha256 "(.*)"' -r '$1' Formula/bashhub-server.rb | head -1)
old_linux_sha=$(rg -oI 'sha256 "(.*)"' -r '$1' Formula/bashhub-server.rb | tail -1)

checksum_url=$(curl -s $url | rg -o 'https.*checksums.txt')
rm -f *checksums.txt
wget -q $checksum_url

new_darwin_sha=$(cat *checksums.txt | rg darwin | cut -d ' ' -f 1)
new_linux_sha=$(cat *checksums.txt | rg linux_amd64 | cut -d ' ' -f 1)

sd $old_version $new_version Formula/bashhub-server.rb
sd $old_version $new_version Formula/bashhub-server.rb
sd $darwin $new_darwin Formula/bashhub-server.rb
sd $old_darwin_sha $new_darwin_sha  Formula/bashhub-server.rb
sd $linux $new_linux Formula/bashhub-server.rb
sd $old_linux_sha $new_linux_sha Formula/bashhub-server.rb
git diff

