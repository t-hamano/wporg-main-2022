#!/bin/bash

root=$( dirname $( wp config path ) )

wp theme activate wporg-main-2022

wp rewrite structure '/%year%/%monthnum%/%postname%/'
wp rewrite flush --hard

wp option update blogname "WordPress.org"
wp option update blogdescription "Blog Tool, Publishing Platform, and CMS"

# wp import "${root}/env/data.xml" --authors=create

wp option update show_on_front 'page'
wp option update page_on_front 8891
