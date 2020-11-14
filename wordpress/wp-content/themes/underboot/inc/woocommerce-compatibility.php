<?php
/**
 * Add WooCommerce compatibility functions
 * This file contains all WooCommerce specific hooks and custom functions
 *
 * @package underboot
 */

/**
 * Add WooCommerce support
 */
if ( ! function_exists( 'underboot_woocommerce_support' ) ) {
	function underboot_woocommerce_support() {
		add_theme_support( 'woocommerce' );

		// Add Product Gallery support.
		add_theme_support( 'wc-product-gallery-lightbox' );
		add_theme_support( 'wc-product-gallery-zoom' );
		add_theme_support( 'wc-product-gallery-slider' );

	}
}
//add_action( 'after_setup_theme', 'underboot_woocommerce_support' );

/**
 * Enqueue theme scripts and styles for WooCommerce compatibility
 */
function underboot_wc_enqueue() {
	if( class_exists( 'WooCommerce' ) && ( is_woocommerce() || is_account_page() 
		|| is_cart() ) ) {
		wp_enqueue_script('underboot-woocommerce', get_template_directory_uri() . '/js/woocommerce.js', array(), '', true);
	}
}
add_action( 'wp_enqueue_scripts', 'underboot_wc_enqueue' );

/**
 * Replace WooCommerce wrappers to theme wrappers
 */
remove_action( 
	'woocommerce_before_main_content', 
	'woocommerce_output_content_wrapper', 10 );
remove_action( 
	'woocommerce_after_main_content', 
	'woocommerce_output_content_wrapper_end', 10 );

/**
 * To display the wrappers of this theme
 */
add_action( 
	'woocommerce_before_main_content', 
	'underboot_woocommerce_wrapper_start', 10 );
add_action( 
	'woocommerce_after_main_content', 
	'underboot_woocommerce_wrapper_end', 10 );

if ( ! function_exists( 'underboot_woocommerce_wrapper_start' ) ) {
	function underboot_woocommerce_wrapper_start() {
		echo '<div class="container"><div class="row mb-4">';
		echo '<div id="primary" class="content-area';
		underboot_content_class();
		echo '"><main id="main" class="site-main">';
	}
}

if ( ! function_exists( 'underboot_woocommerce_wrapper_end' ) ) {
	function underboot_woocommerce_wrapper_end() {
		echo '</main>';
		echo '</div>';
		/* Get Sidebar #secondary */
		get_sidebar();
		echo '</div>';
		echo '</div>';
	}
}

/**
 * Change the markup the woocommerce pagination by default
 */
function underboot_woo_pagination( $args ) {
	$args['prev_text'] = __('Previous','underboot');
	$args['next_text'] = __('Next','underboot');
	$args['type'] = 'plain';
	return $args;
}
add_filter( 'woocommerce_pagination_args', 	'underboot_woo_pagination' );

/**
 * Change the layout before each item product listing
 */
function underboot_before_shop_loop_item_title() {
	echo '<div class="' . apply_filters( 'underboot_product_card_classes', 'text-center card-body' ) . '">';
}
add_action ( 
	'woocommerce_before_shop_loop_item_title', 
	'underboot_before_shop_loop_item_title' );

/**
 * Change the layout after each item product listing
 */
function underboot_after_shop_loop_item() {
	echo '</div>';
}
add_action ( 
	'woocommerce_after_shop_loop_item', 
	'underboot_after_shop_loop_item' );


/**
 * A form classes change function
 * 
 * Modify each individual input type $args defaults
 * Author: Adriano Monecchi http://stackoverflow.com/a/36724593/307826
 *
 * @param string $args Form attributes.
 * @param string $key Not in use.
 * @param null   $value Not in use.
 *
 * @return mixed
 */
add_filter( 
	'woocommerce_form_field_args', 
	'underboot_wc_form_field_args', 10, 3 
);
if ( ! function_exists( 'underboot_wc_form_field_args' ) ) {
	function underboot_wc_form_field_args( $args, $key, $value = null ) {
		// Start field type switch case.
		switch ( $args['type'] ) {
			/* Targets all select input type elements, except the country and state select input types */
			case 'select':
				// Add a class to the field's html element wrapper - woocommerce
				// input types (fields) are often wrapped within a <p></p> tag.
				$args['class'][] = 'form-group';
				// Add a class to the form input itself.
				$args['input_class']       = array( 'form-control', '' );
				$args['label_class']       = array( 'control-label' );
				//$args['custom_attributes']['data-plugin'] = 'select2';
				$args['custom_attributes'] = array(
					'data-plugin'      => 'select2',
					'data-allow-clear' => 'true',
					'aria-hidden'      => 'true',
					// Add custom data attributes to the form input itself.
				);
				break;
			// By default WooCommerce will populate a select with the country names - $args
			// defined for this specific input type targets only the country select element.
			case 'country':
				$args['class'][]     = 'form-group single-country';
				$args['label_class'] = array( 'control-label' );
				break;
			// By default WooCommerce will populate a select with state names - $args defined
			// for this specific input type targets only the country select element.
			case 'state':
				// Add class to the field's html element wrapper.
				$args['class'][] = 'form-group';
				// add class to the form input itself.
				$args['input_class']       = array( '', '' );
				$args['label_class']       = array( 'control-label' );
				//$args['custom_attributes']['data-plugin'] = 'select2';
				$args['custom_attributes'] = array(
					'data-plugin'      => 'select2',
					'data-allow-clear' => 'true',
					'aria-hidden'      => 'true',
				);
				break;
			case 'password':
			case 'text':
			case 'email':
			case 'tel':
			case 'number':
				$args['class'][]     = 'form-group';
				$args['input_class'] = array( 'form-control', '' );
				$args['label_class'] = array( 'control-label' );
				break;
			case 'textarea':
				$args['input_class'] = array( 'form-control', '' );
				//$args['label_class'] = array( 'control-label' );
				break;
			case 'checkbox':
				$args['label_class'] = array( 'form-check-label' );
				$args['input_class'] = array( 'form-check-input', '' );
				break;
			case 'radio':
				$args['label_class'] = array( 'form-check-input' );
				$args['input_class'] = array( 'form-check-label', '' );
				break;
			default:
				$args['class'][]     = 'form-group';
				$args['input_class'] = array( 'form-control', '' );
				//$args['label_class'] = array( 'control-label' );
				break;
		} // end switch ($args).
		return $args;
	}
}