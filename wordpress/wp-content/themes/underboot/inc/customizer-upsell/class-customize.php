<?php
/**
 * Singleton class for handling the theme's customizer integration.
 *
 * @since  1.0.0
 * @access public
 */
final class Underboot_Upsell_Customize {

	/**
	 * Returns the instance.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return object
	 */
	public static function get_instance() {

		static $instance = null;

		if ( is_null( $instance ) ) {
			$instance = new self;
			$instance->setup_actions();
		}

		return $instance;
	}

	/**
	 * Constructor method.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function __construct() {}

	/**
	 * Sets up initial actions.
	 *
	 * @since  1.0.0
	 * @access private
	 * @return void
	 */
	private function setup_actions() {

		// Register panels, sections, settings, controls, and partials.
		add_action( 'customize_register', array( $this, 'sections' ) );

		// Register scripts and styles for the controls.
		add_action( 'customize_controls_enqueue_scripts', array( $this, 'enqueue_control_scripts' ), 0 );
	}

	/**
	 * Sets up the customizer sections.
	 *
	 * @since  1.0.0
	 * @access public
	 * @param  object  $manager
	 * @return void
	 */
	public function sections( $manager ) {

		// Load custom sections.
		require_once( trailingslashit( get_template_directory() ) . '/inc/customizer-upsell/section-pro.php' );

		// Register custom section types.
		$manager->register_section_type( 'Underboot_Upsell_Customize_Section_Pro' );

		// Register sections.
		$manager->add_section(
			new Underboot_Upsell_Customize_Section_Pro(
				$manager,
				'underboot_upsell',
				array(
					'title'    		=> esc_html__( 'Underboot Pro', 'underboot' ),
					'description'   => esc_html__( 'You can get more features plus one-on-one support by purchased the Pro version of this theme.', 'underboot' ),
					'pro_text' 		=> esc_html__( 'Get Pro', 'underboot' ),
					'pro_url'  		=> 'http://dinevthemes.com/themes/underboot/',
					'priority'    	=> 0,
				)
			)
		);
	}

	/**
	 * Loads theme customizer CSS.
	 *
	 * @since  1.0.0
	 * @access public
	 * @return void
	 */
	public function enqueue_control_scripts() {
		wp_enqueue_script( 'underboot-upsell-customize-controls', trailingslashit( get_template_directory_uri() ) . '/inc/customizer-upsell/customize-controls.js', array( 'customize-controls' ) );
		wp_enqueue_style( 'underboot-upsell-customize-controls', trailingslashit( get_template_directory_uri() ) . '/inc/customizer-upsell/customize-controls.css' );
	}
}

// Doing this customizer thang!
Underboot_Upsell_Customize::get_instance();
