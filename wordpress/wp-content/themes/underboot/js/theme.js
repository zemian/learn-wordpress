(function( $ ) {
    'use strict';

    /**
	 * Markup compatibility issue for form fields by default
	 * Comment form
	 */	
    $(document).ready(function() {
        $('textarea,input[type="text"],input[name="password"],input[name="author"],input[type="url"],input[type="email"]').each(function(){
            $(this).addClass( 'form-control' );
        });
    });
	
})( jQuery );
