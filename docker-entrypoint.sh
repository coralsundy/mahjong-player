#!/bin/sh

if [ -z "$SITE_URL" ]; then
    echo "No SITE_URL found, remove site map"
    rm -v dist/sitemap.xml
else
    echo "User defined SITE_URL=$SITE_URL, update the sitemap.xml"
    sed -i "s@lastMod@`date +%Y-%m-%d`@g;s@mySiteUrl@$SITE_URL@g" dist/sitemap.xml
    cat dist/sitemap.xml
fi

npm run server
