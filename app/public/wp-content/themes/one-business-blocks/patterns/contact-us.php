<?php
/**
 * Contact Form Shortcode with Black Border Styles
 */
function wpb_styled_contact_form() {
    ob_start(); // Start output buffering
    ?>
    <div  class="wp-block-group contact-form-group" style="background-color:#ececed; padding: var(--wp--preset--spacing--60);">
        <div class="wp-block-group contact-inner-box">
            <h3 class="wp-block-heading" style="text-transform:uppercase; color: var(--wp--preset--color--primary);">
                <?php esc_html_e('Contact Us', 'one-business-blocks'); ?>
            </h3>
            <p><?php esc_html_e('We would love to hear from you! Fill out the form below:', 'one-business-blocks'); ?></p>

            <?php
            // Display form status messages
            if (isset($_GET['form_status'])) {
                $status = sanitize_text_field($_GET['form_status']);
                
                if ($status === 'success#contact') {
                    echo "<p style='color: green;'>Thank you, your message has been sent!</p>";
                } elseif ($status === 'invalid_email') {
                    echo "<p style='color: red;'>Invalid email address</p>";
                }
            }
            ?>

            <form action="" method="post" class="wp-block-form">
                <div class="form-group">
                    <label for="name"><?php esc_html_e('Name', 'one-business-blocks'); ?></label>
                    <input type="text" id="name" name="name" class="wp-block-input" required 
                        style="width: 100%; padding: 10px; border: 2px solid black; border-radius: 4px;"/>
                </div>

                <div class="form-group">
                    <label for="email"><?php esc_html_e('Email', 'one-business-blocks'); ?></label>
                    <input type="email" id="email" name="email" class="wp-block-input" required 
                        style="width: 100%; padding: 10px; border: 2px solid black; border-radius: 4px;"/>
                </div>

                <div class="form-group">
                    <label for="message"><?php esc_html_e('Message', 'one-business-blocks'); ?></label>
                    <textarea id="message" name="message" class="wp-block-textarea" rows="5" required 
                        style="width: 100%; padding: 10px; border: 2px solid black; border-radius: 4px;"></textarea>
                </div>

                <button type="submit" class="wp-block-button__link" style="background-color: var(--wp--preset--color--primary); color: #fff; padding: 10px 20px; border: none; cursor: pointer;">
                    <?php esc_html_e('Submit', 'one-business-blocks'); ?>
                </button>
            </form>
        </div>
    </div>
    <?php
    return ob_get_clean(); // End output buffering and return the output
}
add_shortcode('styled_contact_form', 'wpb_styled_contact_form');
?>
