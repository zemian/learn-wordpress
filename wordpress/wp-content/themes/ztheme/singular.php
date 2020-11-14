<?php
/**
 * Single post/page template 
 */
get_header();

// ## Get Post data - note that even we are in single post, we still use "The Loop"
echo "<div class='post-view section'>";
while (have_posts()) {
	the_post();

	echo "<div class='post'>";
	the_title("<h1 class='post-title title is-1'>", "</h1>");
	echo "<div class='post-content'>" . the_content() . "</div>";
	echo "</div>";
}
echo "</div>";

//get_sidebar();
get_footer();
