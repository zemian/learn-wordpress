I should document what I learned about WordPress in this folder.

## Developer Refs

* https://wordpress.org/support/
* https://developer.wordpress.org/apis/
* https://developer.wordpress.org/reference/
* https://codex.wordpress.org/File_Header

## WordPress is NOT based on MVC, and that's okay!

https://tommcfarlin.com/wordpress-and-mvc/

## What are `__()` vs `_e()` and `_x()` functions?

https://wpengineer.com/2237/whats-the-difference-between-__-_e-_x-and-_ex/

* `__()` get string resource translation
* `__e()` get and echo string resource translation
* `__x()` get string resource translation with a "context".

## WP CLI

You can automate some of the WP tasks from command line!

See https://make.wordpress.org/cli/handbook/guides/

There is a copy located under `bin/wp.sh`.

## How to generate .pot file for i18n string translation

    bin/wp.sh i18n make-pot wordpress/wp-content/plugins/zplugin wordpress/wp-content/plugins/zplugin/languages/zplugin.pot
    
## How To Modify Admin Post Lists In WordPress

https://www.smashingmagazine.com/2013/12/modifying-admin-post-lists-in-wordpress/

## How To Create Native Admin Tables In WordPress The Right Way

https://www.smashingmagazine.com/2011/11/native-admin-tables-wordpress/

## How to Add MetaBoxes to Post Edit Screen

https://developer.wordpress.org/plugins/metadata/custom-meta-boxes/
