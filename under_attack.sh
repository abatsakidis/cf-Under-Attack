#!/bin/bash

echo "       .__                   .___ _____.__                        "
echo "  ____ |  |   ____  __ __  __| _// ____\  | _____ _______   ____  "
echo "_/ ___\|  |  /  _ \|  |  \/ __ |\   __\|  | \__  \\_  __ \_/ __ \ "
echo "\  \___|  |_(  <_> )  |  / /_/ | |  |  |  |__/ __ \|  | \/\  ___/ "
echo " \___  >____/\____/|____/\____ | |__|  |____(____  /__|    \___  >"
echo "     \/                       \/                 \/            \/ "
echo -e "\033[33;33m                                   Cloudflare Under Attack Script\e[39m"
echo

function usage()
{
    echo 'Usage: '$0' CF_API_KEY you@your-email.com your-domain-name.com enable/disable'
    echo
    echo -e "\e[32mex.\e[39m $0 ea343ffef3244fgg3432d32sef33444fds33s info@attack.com mywebsite.com enable"
    echo
    exit 1;
}

if [ "$#" -lt "1" ]; then
    usage $0
fi

if [ "$4" = "enable" ]; then
echo -n "Under attack mode..."
/usr/bin/curl https://www.cloudflare.com/api_json.html -d a=sec_lvl -d tkn=$1 -d email=$2 -d z=$3 -d v=help > /dev/null 2>&1
echo -e "[\e[32mEnable\e[39m]"
echo
fi

if [ "$4" = "disable" ]; then
echo -n "Under attack mode..."
/usr/bin/curl https://www.cloudflare.com/api_json.html -d a=sec_lvl -d tkn=$1 -d email=$2 -d z=$3 -d v=high > /dev/null 2>&1
echo -e "[\e[32mDisable\e[39m]"
echo
fi

echo



