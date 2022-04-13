[![Build Status](https://travis-ci.org/abatsakidis/cf_under_attack.svg?branch=master)](https://travis-ci.org/abatsakidis/cf_under_attack)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/742445bf63f6436685dfc63c9a083ac1)](https://www.codacy.com/gh/abatsakidis/cf-Under-Attack/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=abatsakidis/cf-Under-Attack&amp;utm_campaign=Badge_Grade)

## Description

Cloudflare Under Attack Script - Version 1.0

## Usage

* Define your Cloudflare API KEY into the script: CF_API_KEY="".
* Define your Cloudflare email address into the script : email=info@underattack.com".
* Run the script selecting your domain name and enable/disable Under attack.

## Example

./under_attack.sh www.coverme.com enable  -> This will enable under attack mode.<br>
./under_attack.sh www.coverme.com disable -> This will disable under attack mode and set security level to High.

## Screenshots

![Alt text](/screenshots/disable.png?raw=true "Disable Under Attack")

## Author

Batsakidis Athanasios - http://www.re-think.gr
