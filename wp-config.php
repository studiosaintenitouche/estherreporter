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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

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
define( 'AUTH_KEY',         'B(F/^<e|*)w(k@BO}G$v?uI>C8VXg*Gr<(]r)g&X+c>VB!nT_9n4d|Oy4JEF*x^/' );
define( 'SECURE_AUTH_KEY',  '!Hkhc?+%k{6d.0oC8XsBB2:(6~oRk6WaR7k[T#&G|] ?Pu~4D{S%5d|ynqW~|%rj' );
define( 'LOGGED_IN_KEY',    'HorKGJmnI,l)U%u,tw]X1WhU.Jl}~G.6xDe-_6vV{=F.*RFA)s?OOGb$ptxO#g;N' );
define( 'NONCE_KEY',        '#27<?SR*RO;K|1I-rPz %>_iRAlLdMqd4VYwk>L*!#~GS~1sP[Q]jC{j4:W*m*Ee' );
define( 'AUTH_SALT',        'Uspu}wvOS*s=:T^Wx5b~AAJ|e/4ekm@5n`N;AQ#DvI%]AJe>}jX(gat /(!i,Rks' );
define( 'SECURE_AUTH_SALT', '^%nr0j(8-/,x=69OuWS01IAkLipujx6I=q[5x.g# !`Tog)Gz,8C1rno2$R=0}y/' );
define( 'LOGGED_IN_SALT',   'Eb7j)u]wMA.MO#B2/#PnOCNIMtIC-2)>yb2OU3deJ,!>/4n6;Y|N6zQh84f=.NSv' );
define( 'NONCE_SALT',       '`#2Mt:i{y-XX_yUkuE1thD]@LPeJA6l|;|O*uf2@=CSzd;JNw!)N.2C]S12mnj D' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'estherreporter_';

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
