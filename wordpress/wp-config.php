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
define( 'DB_NAME', 'wptintdb' );

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
define( 'AUTH_KEY',         'M#2Rc;MP>5^n,IrU8F<}CVzy4^a/*TlgCeS&s1sOd0p&cj;|B4Zblq.WN?j}<6q=' );
define( 'SECURE_AUTH_KEY',  'Vh|N,=Z!Xn!d4M{hJa:K:~UEr&I%(-@i,Ot.e^lY~!@6sD5d@+/FATmGGSu_!M43' );
define( 'LOGGED_IN_KEY',    ',7r>+gzMY<r&dsM{<H+1~}&gxx9X@/d(gUQzhigfMuC7wdEdRCyl+6c~5KlxSDWG' );
define( 'NONCE_KEY',        'j18ec0?U%<MHW}p U5CjUQ}L:T*g8VHA?nZ!|`NQJ8R+h2lUzrssg%$f_zp&L1xy' );
define( 'AUTH_SALT',        'U=c<c1[s@jw@?Mwpmr,)3-?KEGhL(CMUK:v7yN+EJ<}qq/Hzn 438r/duJg(yr{u' );
define( 'SECURE_AUTH_SALT', '`[MMxB&AKK{fpgf|#<L8QB_!7@6m1l_F|Y?p>pwL7giG)sSTuANhu+PN8-vLV e6' );
define( 'LOGGED_IN_SALT',   '$]xhb;~z6K>;<XVPZUVbpei|k@ rHhF-q*<PgaBMb#xqoO@CF>{?SV~oOsJ^08%]' );
define( 'NONCE_SALT',       'aN,pylxLiOmC[&bnz?|vIfkBxY*V7jc0v6X?1h5|B-Cyn6;Y3u~8|J1zkOOWz,Oi' );

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
