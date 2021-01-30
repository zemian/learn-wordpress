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
define( 'AUTH_KEY',         '_kkHE|MWq$<{lX6z.DT>S=N~(C15N4f)4MWHqEOok<a:Fd2R(X5D6?l8EaBu{fJc' );
define( 'SECURE_AUTH_KEY',  'V}E]W}$|&RxvVQ<tpa0YytIWTxtN}vExll:uv!8dOzDplAwiu~(s+w q9Y.I-mW,' );
define( 'LOGGED_IN_KEY',    'qROYc;Wofnmb11[%MQ)4jlY[fL5kBZe9PvcO@WeG&=cS#H~NI;TX8=}f4:+#|}Io' );
define( 'NONCE_KEY',        'uw&m5]CgpG0|IQ3#* )u,V=j@W.*Zuh(4F?Gb?Bv{])KsqXYIVSLG:1tTGeG`kp.' );
define( 'AUTH_SALT',        '~B~$*KE:Z57+XDQ^1`]wp(8(Ae@ero8%g. Jl#9mZPt4VUhP~=.[@|eZ2+waUh]j' );
define( 'SECURE_AUTH_SALT', '}Y+hq5rs1 ?WutOE![sEQ#9QsSd|?lVo0.suPiE-;BJlY4r)6K<:h0HH_{P Xe)#' );
define( 'LOGGED_IN_SALT',   'A9=x]#LGQo1,JTU*JWj$>Uu=)|&mexmTf5L7g?W?F@?k7F)H_n$p8xXBrU.*7~]4' );
define( 'NONCE_SALT',       'Ft{WjiwC!+={!(-&@(qL3%09`z06,8Ppkq&V~XWctqK^LNXQ-thqvluLr*GGatGV' );

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

//// Change and override local dev web server base URLs
//define( 'WP_SITEURL', 'http://localhost/wordpress' );
//define( 'WP_HOME', 'http://localhost/wordpress' );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
