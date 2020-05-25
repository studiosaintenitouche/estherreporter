<?php
function custom_menu_page_removing() {
    remove_menu_page( 'jetpack' );                    //Jetpack*                   //Posts           //Media
	remove_menu_page( 'edit-comments.php' );          //Comments
}
add_action( 'admin_menu', 'custom_menu_page_removing' );