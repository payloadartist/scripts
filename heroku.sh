# Bash function that checks if a *.herokuapp.com sub-domain is available for takeover
# Install: Add this to ~/.bashrc, then 'source ~/.bashrc' to reload the .bashrc settings
# Usage: Use the command 'heroku app_name_to_check'

heroku() { curl -sk -o /dev/null -w  '%{http_code}\n' "https://api.heroku.com/apps/$1"  \
-H 'accept: application/vnd.heroku+json; version=3'   -H 'x-heroku-requester: dashboard' | grep -q 404 \
&& echo -e "$1.herokuapp.com is available & vulnerable to STO" || echo "$1.herokuapp.com is not available and not vulnerable to STO";}
