(function( $ ) {
    'use strict';

    /**
	 * Search button toggled.
	 */	
    $(".search-btn").on("click", function() {
        $(".in-nav-bar.search-form").toggleClass('active');
    });
	
})( jQuery );
