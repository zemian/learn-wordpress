jQuery( document ).ready(

		/**
		 * Compatible drop-down menu issue.
		 */
		function($) {
				var windowWidth = window.innerWidth;
			
				/**
				 * Add active parent links on navigation
				 */
				$( '.navbar .dropdown > a' ).click(
					function () {
						//Do nothing if it's an empty hash.
						
						if ( $( this ).attr( 'href' ) === '#' ) {
							return false;
						}
						location.href = this.href;
						return false;
						
					}
				);
				
				if ( windowWidth >= 768 ) {
					/**
					 * Add Hover Dropdown
					 */
					$('.navbar .dropdown').hover(
						function() {
							$(this).find('.dropdown-menu').first().stop(true, true).delay(250).slideDown();
						},
						function() {
							$(this).find('.dropdown-menu').first().stop(true, true).delay(100).slideUp();
						}
					);
				}
				else {
					/**
					 * Always show sub-menu on the mobile screen
					 */
					$('.dropdown-menu').toggleClass('show');
				}

		}
		
( jQuery ));
