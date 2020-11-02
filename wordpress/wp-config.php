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
define( 'AUTH_KEY',         '<M[COHre&;_]x]rN>+Lvaz mr0e;k%#Xx%TRfiV&!NtkGH(c**@!U7}T.bWo8/Sa' );
define( 'SECURE_AUTH_KEY',  '& ^tr|ZY(^9Ow.=X;fnA% :%s8^]H!_IuXHheC^P$g6r4|b%=4Z2)OXftl!@#Vg{' );
define( 'LOGGED_IN_KEY',    'sZW pJxNySeX5I%[_P0jeI&yE0-DW;w7S`cq2w5x_90JdIjO<rv>6&~}()*9X^-C' );
define( 'NONCE_KEY',        '5lJUT~Mg]Q#4KwAm_[FvY:!hmcLJlDEjs=?rW;7kdZk56x3SwW+skY+`Y/COrqL!' );
define( 'AUTH_SALT',        'BA]P?!C0.s#IGu&~}np#L]z|]L1}6/t3q8?=.#?Z58:ws]c?Nf`SSie}iCu<<&lN' );
define( 'SECURE_AUTH_SALT', '!<LJGM4Fa VV,+1~}.h/,,!>)e(BCwn:v~wF2{} G 503k ,=.1rX0Gf0:Pk(l5C' );
define( 'LOGGED_IN_SALT',   'w_4A/Z?kVtrmdYwVock]OA,]lN@=OGBcQ;My)]7N~Ti:+e!V,|(su<X&TsB8|?Co' );
define( 'NONCE_SALT',       'A,cNgdyw2+{E|W1sG:[?q}!<~Ns+Ld7 %nHtG/!!5YFD{+r!s#K>tlV:,>K)`[+k' );

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
