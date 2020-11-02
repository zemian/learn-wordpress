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

## WordPress 5.5.3 File Size

```
$ du -h wordpress | sort -rh | head -10
 57M	wordpress
 36M	wordpress/wp-includes
 22M	wordpress/wp-includes/js
 13M	wordpress/wp-includes/js/dist
 12M	wordpress/wp-content/themes
 12M	wordpress/wp-content
9.1M	wordpress/wp-admin
2.9M	wordpress/wp-includes/js/tinymce
2.9M	wordpress/wp-admin/includes
2.6M	wordpress/wp-admin/css
```

```
$ cloc wordpress
    2065 text files.
    2048 unique files.                                          
      43 files ignored.

github.com/AlDanial/cloc v 1.88  T=7.51 s (269.2 files/s, 150429.3 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
JavaScript                     506          65397          89490         291016
PHP                           1092          52987         154287         256650
CSS                            305          29156          10323         153347
JSON                            47              0              0          18207
Sass                            55           1327            108           5480
SVG                             12              0              6           1592
Markdown                         3            130              0            243
HTML                             1             13              0             84
XML                              1              6              0             37
-------------------------------------------------------------------------------
SUM:                          2022         149016         254214         726656
-------------------------------------------------------------------------------
```