<?php
/**
 * Main template for home page of the site
 */

get_header();

echo "<h1 class='page-title title is-1'>Recent Posts</h1>";

// ## List of Posts with "The Loop"
echo "<div class='post-preview-list section'>";
while (have_posts()) {
	the_post();
	
	echo "<div class='post-preview-item'>";
	the_title("<h2 class='post-title title is-2'>", "</h2>");
	echo "<div class='post-preview'>" . get_the_excerpt() . "</div>";
	echo "<a href='" . get_permalink() . "'>Read More ...</a>";
	echo "</div>";
}
echo "</div>";

//get_sidebar();
get_footer();
