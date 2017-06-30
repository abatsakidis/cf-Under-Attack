#!/bin/bash

echo "       .__                   .___ _____.__                        "
echo "  ____ |  |   ____  __ __  __| _// ____\  | _____ _______   ____  "
echo "_/ ___\|  |  /  _ \|  |  \/ __ |\   __\|  | \__  \\_  __ \_/ __ \ "
echo "\  \___|  |_(  <_> )  |  / /_/ | |  |  |  |__/ __ \|  | \/\  ___/ "
echo " \___  >____/\____/|____/\____ | |__|  |____(____  /__|    \___  >"
echo "     \/                       \/                 \/            \/ "
echo -e "\033[33;33m                                   Cloudflare Under Attack Script\e[39m"
echo

CF_API_KEY="e12861ddbebdae3c83c9ada22f2eda9c3b7c3"
email="info@underattack.com"

function usage()
{
    echo 'Usage: '$0' your-domain-name.com enable/disable'
    echo
    echo -e "\e[32mex.\e[39m $0 mywebsite.com enable"
    echo
    exit 1;
}

if [ "$#" -lt "1" ]; then
    usage $0
fi

if [ "$2" = "enable" ]; then
echo -n "Under attack mode..."
/usr/bin/curl https://www.cloudflare.com/api_json.html -d a=sec_lvl -d tkn=$CF_API_KEY -d email=$email -d z=$1 -d v=help > /dev/null 2>&1
echo -e "[\e[32mEnable\e[39m]"
echo
fi

if [ "$2" = "disable" ]; then
echo -n "Under attack mode..."
/usr/bin/curl https://www.cloudflare.com/api_json.html -d a=sec_lvl -d tkn=$CF_API_KEY -d email=$email -d z=$1 -d v=high > /dev/null 2>&1
echo -e "[\e[32mDisable\e[39m]"
echo
fi

echo