<?php
/**
 * Welcome screen.
 */
class Underboot_Welcome_Screen {

	/**
	 * Class instance.
	 */
    private static $instance;

	/**
	 * Constructor method.
	 *
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Returns the instance.
	 *
	 * @access public
	 * @return object
	 */
	public static function instance() {
		if ( ! isset( self::$instance ) && ! ( self::$instance instanceof Underboot_Welcome_Screen ) ) {
			self::$instance = new Underboot_Welcome_Screen;
			self::$instance->setup_actions();
		}
		return self::$instance;
	}

	/**
	 * Sets up initial actions.
	 *
	 * @access private
	 * @return void
	 */
	private function setup_actions() {
		// Display activation notice.
		add_action( 'load-themes.php', array( self::$instance, 'add_admin_notices' ) );
		// Add theme's info page to the Dashboard menu.
		add_action( 'admin_menu', array( self::$instance, 'register_menu_page' ) );
		// Add theme's info page scripts.
		add_action( 'admin_enqueue_scripts', array( self::$instance, 'admin_scripts' ) );
	}

	/**
	 * Load theme's info page styles.
	 *
	 * @access public
	 * @return void
	 */
	public function admin_scripts() {
		global $pagenow;

		if ( 'themes.php' != $pagenow ) {
			return;
		}

		wp_enqueue_style( 'underboot-dashboard', UNDERBOOT_DIR_URI . '/inc/welcome-screen/assets/dashboard-style.css', false, '1.0.0' );
	}

	/**
	 * Create theme's info page.
	 *
	 * @access public
	 * @return void
	 */
	public function register_menu_page() {
		 add_theme_page( esc_html__( 'Underboot Dashboard', 'underboot' ), esc_html__( 'Theme Info', 'underboot' ), 'edit_theme_options', 'underboot-dashboard', array( self::$instance, 'theme_dashboard_page' ) );
	}

	/**
	 * Display a welcome notice upon successful activation.
	 *
	 * @access public
	 * @return void
	 */
	public function add_admin_notices() {
		global $pagenow;

		if ( is_admin() && ( 'themes.php' == $pagenow ) && isset( $_GET['activated'] ) ) {
			add_action( 'admin_notices', array( self::$instance, 'welcome_admin_notice' ) );
		}
 	}

	/**
	 * Display a welcome notice when the theme is activated.
	 *
	 * @access public
	 * @return void
	 */
	public function welcome_admin_notice() {
		$theme_data = wp_get_theme(); ?>
		<div class="updated notice notice-success notice-alt is-dismissible">
			<p>
			<?php
			/* translators: %1$s and %2$s are placeholders that will be replaced by variables passed as an argument. */
			printf( wp_kses( __( 'Welcome and thanks for choosing %1$s! To help you get starter with the theme, please visit our <a href="%2$s">welcome page</a>.', 'underboot' ), array( 'a' => array( 'href' => array() ) ) ), esc_attr( $theme_data->Name ), esc_url( admin_url( 'themes.php?page=underboot-dashboard' ) ) ); ?>
			</p>
			<?php
			if ( UNDERBOOT_PREMIUM == 3 ) : // temporarily disabled this by setting a fake value
				// Links that are used on this.
				$premium_links = array(
					'premium' => 'www.dinevthemes.com/themes/underboot/',
				);
			?>
			<p>
			<?php
			/* translators: %1$s and %2$s are placeholders that will be replaced by variables passed as an argument. */
			printf( wp_kses( __( 'Did you know that there\'s a Premium version of %1$s with more great features? <a href="%2$s">Click here to learn more</a> about %1$s Premium', 'underboot' ), array( 'a' => array( 'href' => array() ) ) ), esc_attr( $theme_data->Name ), esc_url( $premium_links['premium'] ) ); ?>
			</p>
			<?php
			endif; ?>
		</div><!-- .notice -->
		<?php
	}

	/**
	 * Display content of theme's dashabord page.
	 *
	 * @access public
	 * @return void
	 */
	public function theme_dashboard_page() {
		require_once UNDERBOOT_DIR . '/inc/welcome-screen/partials/theme-dashboard-page.php';
	}

	/**
	 * Display tabs on the theme's dashabord page.
	 *
	 * @access public
	 * @param string
	 * @return void
	 */
	public function get_dashboard_page_tabs( $current_tab = '' ) {
		$tabs = array(
			array(
				'slug' => 'getting_started',
				'title' => esc_html__( 'Getting Started', 'underboot' ),
			),
			array(
				'slug' => 'support',
				'title' => esc_html__( 'Support', 'underboot' ),
			),
			array(
				'slug' => 'contribute',
				'title' => esc_html__( 'Contribute', 'underboot' ),
			),
		);

		$tabs = apply_filters( 'underboot_dashboard_page_tabs', $tabs );

		foreach ( $tabs as $tab ) {
			if ( $current_tab === $tab['slug'] ) {
				$class = 'nav-tab nav-tab-active';
			} else {
				$class = 'nav-tab';
			}

			// Create URL for the current tab.
			$url = esc_url( admin_url( 'themes.php?page=underboot-dashboard&tab=' . $tab['slug'] ) );

			/* translators: %1$s, %2$s and %3$s are a placeholders that will be replaced by variables passed as an argument. */
			printf( '<a class="%1$s" href="%2$s">%3$s</a>', $class, $url, $tab['title'] ); // WPCS: XSS OK.
		}
	}

	/**
	 * Display tabs content on the theme's dashabord page.
	 *
	 * @access public
	 * @param string
	 * @return void
	 */
	public function get_dashboard_page_tab_content( $current_tab = '' ) {
		$content = array(
			'support' => UNDERBOOT_DIR . '/inc/welcome-screen/partials/theme-dashboard-support.php',
			'contribute' => UNDERBOOT_DIR . '/inc/welcome-screen/partials/theme-dashboard-contribute.php',
			'getting_started' => UNDERBOOT_DIR . '/inc/welcome-screen/partials/theme-dashboard-getting-started.php',
		);

		$content = apply_filters( 'underboot_dashboard_page_tab_content', $content );

		if ( isset( $content[$current_tab] ) && file_exists( $content[$current_tab] ) ) {
			require_once $content[$current_tab];
		}
	}
}
Underboot_Welcome_Screen::instance();
