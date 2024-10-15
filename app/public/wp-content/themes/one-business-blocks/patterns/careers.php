<?php
// Contact Form Shortcode with Career Application Fields
function wpb_career_application_form() {
    ob_start(); // Start output buffering
    ?>
    <div class="wp-block-group career-form-group" style="background-color:#ececed; padding: var(--wp--preset--spacing--60);">
        <div class="wp-block-group career-inner-box">
            <h3 class="wp-block-heading" style="text-transform:uppercase; color: var(--wp--preset--color--primary);">
                <?php esc_html_e('Apply for a Position', 'one-business-blocks'); ?>
            </h3>
            <p><?php esc_html_e('Please fill out the form below to apply for a position:', 'one-business-blocks'); ?></p>

            <?php
            // Display form status messages
            if (isset($_GET['form_status'])) {
                $status = sanitize_text_field($_GET['form_status']);
                
                if ($status === 'success') {
                    echo "<p style='color: green;'>Thank you, your application has been submitted!</p>";
                } elseif ($status === 'invalid_email') {
                    echo "<p style='color: red;'>Invalid email address</p>";
                } elseif ($status === 'file_error') {
                    echo "<p style='color: red;'>There was an error uploading the file</p>";
                }
            }
            ?>

            <form action="" method="post" enctype="multipart/form-data" class="wp-block-form">
                <div class="form-group">
                    <label for="name"><?php esc_html_e('Name', 'one-business-blocks'); ?></label>
                    <input type="text" id="name" name="name" class="wp-block-input" required style="width: 100%; padding: 10px; margin-bottom: 20px;">
                </div>

                <div class="form-group">
                    <label for="email"><?php esc_html_e('Email', 'one-business-blocks'); ?></label>
                    <input type="email" id="email" name="email" class="wp-block-input" required style="width: 100%; padding: 10px; margin-bottom: 20px;">
                </div>

                <div class="form-group">
                    <label for="about"><?php esc_html_e('Tell us about yourself', 'one-business-blocks'); ?></label>
                    <textarea id="about" name="about" class="wp-block-textarea" rows="5" required style="width: 100%; padding: 10px; margin-bottom: 20px;"></textarea>
                </div>

                <div class="form-group">
                    <label for="github"><?php esc_html_e('GitHub Profile URL', 'one-business-blocks'); ?></label>
                    <input type="url" id="github" name="github" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 20px;">
                </div>

                <div class="form-group">
                    <label for="linkedin"><?php esc_html_e('LinkedIn Profile URL', 'one-business-blocks'); ?></label>
                    <input type="url" id="linkedin" name="linkedin" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 20px;">
                </div>

                <div class="form-group">
                    <label for="resume"><?php esc_html_e('Attach your resume', 'one-business-blocks'); ?></label>
                    <input type="file" id="resume" name="resume" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 20px;">
                </div>

                <input type="submit" name="submit_application" value="<?php esc_html_e('Submit Application', 'one-business-blocks'); ?>" class="wp-block-button" style="padding: 10px 20px; background-color: var(--wp--preset--color--primary); color: #fff; border: none;">
            </form>
        </div>
    </div>
    <?php
    return ob_get_clean(); // Return the buffered content
}
add_shortcode('wpb_career_application_form', 'wpb_career_application_form');
?>