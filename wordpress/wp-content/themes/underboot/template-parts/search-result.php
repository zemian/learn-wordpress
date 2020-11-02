<?php
/**
 * Template part for displaying search result
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package underboot
 */

the_title( sprintf( '<li class="list-group-item"><a href="%s" rel="bookmark">',
		esc_url( get_permalink() ) ), '</a></li>' );

