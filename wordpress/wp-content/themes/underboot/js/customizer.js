/**
 * File customizer.js.
 *
 * Theme Customizer enhancements for a better user experience.
 *
 * Contains handlers to make Theme Customizer preview reload changes asynchronously.
 */

( function( $ ) {

	// Site title and description.
	wp.customize( 'blogname', function( value ) {
		value.bind( function( to ) {
			$( '.site-title a' ).text( to );
		} );
	} );
	wp.customize( 'blogdescription', function( value ) {
		value.bind( function( to ) {
			$( '.site-description' ).text( to );
		} );
	} );

	// Colors.
	wp.customize( 'site_title_color', function( value ) {
		value.bind( function( to ) {
				$( '.navbar-dark .navbar-brand, .navbar-dark .navbar-brand:hover' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'menu_bar_bgcolor', function( value ) {
		value.bind( function( to ) {
				$( '.navbar.navbar-dark' ).css( {
					'background-color': to
				} );
		} );
	} );
	wp.customize( 'entry_bgcolor', function( value ) {
		value.bind( function( to ) {
				$( '.post .card-body' ).css( {
					'background-color': to
				} );
		} );
	} );
	wp.customize( 'entry_footer_bgcolor', function( value ) {
		value.bind( function( to ) {
				$( '.post .card-footer' ).css( {
					'background-color': to
				} );
		} );
	} );
	wp.customize( 'menu_color', function( value ) {
		value.bind( function( to ) {
				$( '.navbar-dark .navbar-nav .nav-link' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'main_color', function( value ) {
		value.bind( function( to ) {
				$( 'body' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'link_color', function( value ) {
		value.bind( function( to ) {
				$( 'a' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'title_color', function( value ) {
		value.bind( function( to ) {
				$( '.entry-title, .entry-title a, .page-title' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'wgt_title_color', function( value ) {
		value.bind( function( to ) {
				$( '.widget-title' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'meta_color', function( value ) {
		value.bind( function( to ) {
				$( '.entry-meta, .entry-footer' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'link_color', function( value ) {
		value.bind( function( to ) {
				$( 'a' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'meta_color', function( value ) {
		value.bind( function( to ) {
				$( '.entry-footer, .entry-meta' ).css( {
					'color': to
				} );
		} );
	} );
	wp.customize( 'primary_btn_color', function( value ) {
		value.bind( function( to ) {
				$( '.btn-primary' ).css( {
					'background-color': to
				} );
		} );
	} );
	wp.customize( 'footer_bgcolor', function( value ) {
		value.bind( function( to ) {
				$( '.site-footer' ).css( {
					'background-color': to
				} );
		} );
	} );
	wp.customize( 'footer_color', function( value ) {
		value.bind( function( to ) {
				$( '.site-footer, .site-footer a' ).css( {
					'color': to
				} );
		} );
	} );


// END	
} )( jQuery );
