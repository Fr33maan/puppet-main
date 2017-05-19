## Description
This repo contains an install.sh script which will proceed to update, install puppet and git.
Then the repo will be downloaded and main.pp will be applied to the server.

### Main.pp
- proceed to dist-upgrade
- remove exim 4
- disable ipv6

### Use it
Run `bash <(curl -s https://raw.githubusercontent.com/l1br3/puppet-main/master/install.sh)`
