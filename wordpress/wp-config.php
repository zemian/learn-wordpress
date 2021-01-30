<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpressdb' );

/** MySQL database username */
define( 'DB_USER', 'zemian' );

/** MySQL database password */
define( 'DB_PASSWORD', 'test123' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '^E=4-/a)?wNorwnyE}R$q5mPSC1maa4m$762gqoCg*bTW+O> 9 B*]P@7.7CBaxB' );
define( 'SECURE_AUTH_KEY',  ',<j{ks(Zh5^`]F3kc6hphe[uLg3d:$gf~9r*<2@:.9x}Ito!CV37%#}:pXs]PyIw' );
define( 'LOGGED_IN_KEY',    'vY|OW/q6}y<sMP:7$`J<-4sNhb*tQk!Iy-gC]<9Z$_7jmJG9E=828cTB0s1I#{7s' );
define( 'NONCE_KEY',        'G{{|&Y>$^t^akJj[01(/V1gZS@9yvF.M>Ho7Q#a guS3GwoT(Cr%Z}]iZ8~Tfwpl' );
define( 'AUTH_SALT',        '.W9XBj!r$7jT}iGjiN#Z()v07tW/&8qQj?|1~{G2lqj?)h]i`AAJE-=mcBOvlI98' );
define( 'SECURE_AUTH_SALT', '1M9fi31ILM23;4/t]*-(_I^9PlClM3ejSRb3dj7G!(cpLq*_q?T.JJ-JzpW:r>gJ' );
define( 'LOGGED_IN_SALT',   'Sz$CED<CgX_%@LwtHH>Q<<Cr(9pzM6LBT~KzLTl$Y%$5s :!#0]KD~LH2rL)cgq6' );
define( 'NONCE_SALT',       ':^]xwN 9=t`1z41d}BF$% D7h*IbZ|-{vt2axN4,ueA;sba~XgCby;1-cY?3Nc+(' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
