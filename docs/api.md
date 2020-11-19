## WP REST API

https://developer.wordpress.org/rest-api/
https://developer.wordpress.org/rest-api/key-concepts/

WP REST API Schema https://developer.wordpress.org/rest-api/extending-the-rest-api/schema/

## Access REST

https://developer.wordpress.org/rest-api/using-the-rest-api/

http://localhost/wordpress/index.php/wp-json/ # for pretty permalinks
http://localhost/wordpress/?rest_route=/  # for non-pretty permalinks

NOTE: http://localhost/wordpress/wp-jon will not work local dev. You must `index.php`.

Get list of available routes / namespaces:
http://localhost/wordpress/index.php/wp-json/

Get posts
http://localhost/wordpress/index.php/wp-json/wp/v2/posts?per_page=5&page=2
    - See Headers: X-WP-Total, X-WP-TotalPages
    - See https://developer.wordpress.org/rest-api/reference/posts/

Get all categories
http://localhost/wordpress/index.php/wp-json/wp/v2/categories
    - See https://developer.wordpress.org/rest-api/reference/categories/

Get pages
http://localhost/wordpress/index.php/wp-json/wp/v2/pages

Get post types
http://localhost/wordpress/index.php/wp-json/wp/v2/types

Get users
http://localhost/wordpress/index.php/wp-json/wp/v2/users

Search site
http://localhost/wordpress/index.php/wp-json/wp/v2/search?search=Sample
    
See all the endpoint references here: https://developer.wordpress.org/rest-api/reference/

## How to Disable REST API?

https://de.wordpress.org/plugins/disable-json-api/
https://de.wordpress.org/plugins/wordfence/

## Extending API

https://developer.wordpress.org/rest-api/extending-the-rest-api/

Action: `rest_api_init`

## AJAX in Plugin

https://codex.wordpress.org/AJAX_in_Plugins

https://developer.wordpress.org/reference/classes/wp_rest_server/

See also on `WP_REST_Request` and `WP_REST_Response` objects
