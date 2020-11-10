## On site frontend

Use `parse_request` action hook to read `$_POST`

## On admin backend
Use `load-(page)` action hook.

This action is not usually added directly -- see Adding Administration Menus for more details of 
how to add admin menus. If you do want to use it directly, the return value from add_options_page() and 
similar functions gives you the "(page)" part of the action name.

## Ref

See https://codex.wordpress.org/Plugin_API/Action_Reference
