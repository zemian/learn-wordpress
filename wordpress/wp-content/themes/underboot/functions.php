<?php
/**
 * Functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package underboot
 */

/**
 * Theme Constants
 */
$underboot_theme_options  = wp_get_theme();
$underboot_theme_version  = $underboot_theme_options->get( 'Version' );

define( 'UNDERBOOT_DIR', get_template_directory() );
define( 'UNDERBOOT_DIR_URI', get_template_directory_uri() );
define( 'UNDERBOOT_VERSION', $underboot_theme_version );

if ( ! function_exists( 'underboot_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function underboot_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on underboot, use a find and replace
		 * to change 'underboot' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'underboot', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );
		
		// Custom Image Sizes
		add_image_size( 'underboot-thumb-v-200-270', 200, 270, true ); //crop
		add_image_size( 'underboot-thumb-750-300', 750, 300, true ); //crop
		add_image_size( 'underboot-featured-900-600', 900, 600, true ); //crop
		add_image_size( 'underboot-cover-image', 1200, 9999 );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'primary' => esc_html__( 'Primary', 'underboot' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support(
			'html5',
			array(
				'comment-form',
				'comment-list',
				'gallery',
				'caption',
			) 
		);

		/**
		 * Add support for core custom header feature.
		 *
		 * @link https://developer.wordpress.org/reference/functions/add_theme_support/#custom-header
		 */
		$defaults = array(
					'default-image'          => '',
					'header-text'            => false,
					'width'                  => 1900,
					'height'                 => 1200,
					'flex-height'            => true,
		);
		add_theme_support( 'custom-header', $defaults );

		/**
		 * Add support for core custom background feature.
		 *
		 * @link https://codex.wordpress.org/Custom_Backgrounds
		 */
		$defaults = array(
					'default-color' => 'ffffff',
					'default-image' => '',
		);
		add_theme_support( 'custom-background', $defaults );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 80,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
			'unlink-homepage-logo' => true // WP 5.5 new feature
		) );

		/**
		 * Add WooCommerce support
		 */
		add_theme_support( 'woocommerce' );

		// Add Product Gallery support.
		add_theme_support( 'wc-product-gallery-lightbox' );
		add_theme_support( 'wc-product-gallery-zoom' );
		add_theme_support( 'wc-product-gallery-slider' );

		/**
		 *
		 * Add support for Block Styles.
		 *
		 */
		add_theme_support( 'wp-block-styles' );

		// Add support for full and wide align images.
		add_theme_support( 'align-wide' );

		// Add support for editor styles.
		add_theme_support( 'editor-styles' );

		// Enqueue editor styles.
		add_editor_style( 'style-editor.css' );

		// Add support for responsive embedded content.
		add_theme_support( 'responsive-embeds' );

	} // underboot_setup()

endif;
add_action( 'after_setup_theme', 'underboot_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function underboot_content_width() {
	// This variable is intended to be overruled from themes.
	$GLOBALS['content_width'] = apply_filters( 'underboot_content_width', 640 );
}
add_action( 'after_setup_theme', 'underboot_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function underboot_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'underboot' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'underboot' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h5 class="widget-title">',
		'after_title'   => '</h5>',
	) );
}
add_action( 'widgets_init', 'underboot_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function underboot_scripts() {

	// Bootstrap reboot styles
	wp_enqueue_style( 'underboot-bootstrap-reboot', get_template_directory_uri() . '/vendor/bootstrap-src/css/bootstrap-reboot.min.css' );

	// Bootstrap styles
	wp_enqueue_style( 'underboot-bootstrap', get_template_directory_uri() . '/vendor/bootstrap-src/css/bootstrap.min.css' );
	
	// Theme styles
	wp_enqueue_style( 'underboot-style', get_stylesheet_uri() );

	wp_enqueue_style( 'dashicons' );

	// Bootstrap core JavaScript: jQuery first, then Popper.js, then Bootstrap JS
	wp_enqueue_script( 'jquery' );
	wp_enqueue_script('underboot-popper', get_template_directory_uri() . '/vendor/bootstrap-src/js/popper.min.js', array(), '', true );
	wp_enqueue_script('underboot-bootstrap', get_template_directory_uri() . '/vendor/bootstrap-src/js/bootstrap.min.js', array(), '', true );

	// Theme scripts
	wp_enqueue_script( 'underboot-theme', get_theme_file_uri( '/js/theme.js' ), array( 'jquery' ), '24335131', true );
	wp_enqueue_script( 'underboot-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '26032012', true );
	if ( get_theme_mod('show_search_menu_item') == true ) {
		wp_enqueue_script( 'underboot-search-modal', get_theme_file_uri( '/js/search-modal.js' ), array( 'jquery' ), '8137138713', true );
	}

	if ( get_theme_mod('mainmenu_dropdown_mode') != 'bootstrap' ) {
		// Dropdown submenu by hover
		wp_enqueue_script('underboot-dropdown-hover', get_template_directory_uri() . '/js/dropdown-hover.js', array(), '', true);
	}

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'underboot_scripts' );

function underboot_editor_style() {
	wp_enqueue_style(
		'underboot-editor-style',
		get_stylesheet_directory_uri() . "/style-editor.css",
		array(),
		'3534535'
	);
}
add_action('enqueue_block_editor_assets', 'underboot_editor_style');

/**
 * Load WordPress nav walker.
 */
require get_template_directory() . '/inc/wp-bootstrap-navwalker.php';

/**
 * Hooked up to change link attribute value
 * @see wp-bootstrap-navwalker.php line 178
 */
function underboot_nav_mode(){
	if ( get_theme_mod('mainmenu_dropdown_mode') != 'bootstrap' ) {
		$atts_href = ! empty( $item->url ) ? $item->url : '';
	} else {
		$atts_href = '#';
	}

	return $atts_href;
}
//add_filter( 'nav_menu_link_atts_href', 'underboot_nav_mode' );

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Theme Customizer.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Upsell section into Customizer
 */
require_once get_template_directory() . '/inc/customizer-upsell/class-customize.php';

/**
 * Add WooCommerce compatibility functions.
 */
if( class_exists( 'WooCommerce' ) ) {
	require_once get_template_directory() . '/inc/woocommerce-compatibility.php';
}

/**
 * Load Welcome Screen
 */
require_once( get_template_directory() . '/inc/welcome-screen/welcome-screen.php' );

/**
 * Example of a filter for adding an element.
 * Uncomment to apply
 * @see additional-items.php
 * @see template-tags.php
 */
//add_filter( 'underboot_add_navbar_items', 'underboot_add_new_navbar_item' );
function underboot_add_new_navbar_item( $items ) {
    $items .= '<div class="user-btn pl-lg-2 d-inline"><a href="#" class="dashicons dashicons-admin-users"></a></div>';
    return $items;
}
