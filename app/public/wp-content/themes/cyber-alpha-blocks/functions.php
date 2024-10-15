<?php
// Enqueue parent and child theme styles
function cyber_alpha_blocks_enqueue_styles() {
    // Enqueue the parent theme stylesheet
    wp_enqueue_style( 'one-business-blocks-parent-style', get_template_directory_uri() . '/style.css' );
    
    // Enqueue the child theme stylesheet
    wp_enqueue_style( 'cyber-alpha-blocks-child-style', get_stylesheet_uri(), array( 'one-business-blocks-parent-style' ) );
}
add_action( 'wp_enqueue_scripts', 'cyber_alpha_blocks_enqueue_styles' );


function wpb_career_application_form() {
    ob_start(); // Start output buffering
    ?>
    <div class="wp-block-group career-form-group" style="background-color:#ffffff; padding: var(--wp--preset--spacing--60);">
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
                    <label for="first_name"><?php esc_html_e('First Name', 'one-business-blocks'); ?> <span style="color:red;">*</span></label>
                    <input type="text" id="first_name" name="first_name" class="wp-block-input" required style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <div class="form-group">
                    <label for="last_name"><?php esc_html_e('Last Name', 'one-business-blocks'); ?> <span style="color:red;">*</span></label>
                    <input type="text" id="last_name" name="last_name" class="wp-block-input" required style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <div class="form-group">
                    <label for="email"><?php esc_html_e('Email', 'one-business-blocks'); ?> <span style="color:red;">*</span></label>
                    <input type="email" id="email" name="email" class="wp-block-input" required style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <div class="form-group">
                    <label for="about"><?php esc_html_e('Tell us about yourself', 'one-business-blocks'); ?> <span style="color:red;">*</span></label>
                    <textarea id="about" name="about" class="wp-block-textarea" rows="5" required style="width: 100%; padding: 10px; margin-bottom: 10px;"></textarea>
                </div>

                <div class="form-group">
                    <label for="github"><?php esc_html_e('GitHub Profile URL', 'one-business-blocks'); ?></label>
                    <input type="url" id="github" name="github" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <div class="form-group">
                    <label for="linkedin"><?php esc_html_e('LinkedIn Profile URL', 'one-business-blocks'); ?></label>
                    <input type="url" id="linkedin" name="linkedin" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <div class="form-group">
                    <label for="resume"><?php esc_html_e('Attach your resume', 'one-business-blocks'); ?></label>
                    <input type="file" id="resume" name="resume" class="wp-block-input" style="width: 100%; padding: 10px; margin-bottom: 10px;">
                </div>

                <input type="submit" name="submit_application" value="<?php esc_html_e('Submit Application', 'one-business-blocks'); ?>" class="wp-block-button" style="padding: 10px 20px; background-color: var(--wp--preset--color--primary); color: #fff; border: none;">
            </form>
        </div>
    </div>
    <?php
    return ob_get_clean(); // Return the buffered content
}
add_shortcode('wpb_career_application_form', 'wpb_career_application_form');




// Contact Form Shortcode with Styles
function wpb_styled_contact_form() {
    ob_start(); // Start output buffering
    ?>
    <div class="wp-block-group contact-form-group" style="background-color:#ffffff; padding: var(--wp--preset--spacing--60);">
        <div class="wp-block-group contact-inner-box">
            <h3 class="wp-block-heading" style="text-transform:uppercase; color: var(--wp--preset--color--primary);">
                <?php esc_html_e('Contact Us', 'one-business-blocks'); ?>
            </h3>
            <p><?php esc_html_e('We would love to hear from you! Fill out the form below:', 'one-business-blocks'); ?></p>

            <form action="" method="post" class="wp-block-form">
                <div class="form-group">
                    <label for="first_name">
                        <?php esc_html_e('First Name', 'one-business-blocks'); ?>
                        <span style="color: red;">*</span>
                    </label>
                    <input type="text" id="first_name" name="first_name" class="wp-block-input" required style="width: 100%; padding: 10px;"> <!-- Reduced margin-bottom -->
                </div>

                <div class="form-group">
                    <label for="last_name">
                        <?php esc_html_e('Last Name', 'one-business-blocks'); ?>
                        <span style="color: red;">*</span>
                    </label>
                    <input type="text" id="last_name" name="last_name" class="wp-block-input" required style="width: 100%; padding: 10px; "> <!-- Reduced margin-bottom -->
                </div>

                <div class="form-group">
                    <label for="email">
                        <?php esc_html_e('Email', 'one-business-blocks'); ?>
                        <span style="color: red;">*</span>
                    </label>
                    <input type="email" id="email" name="email" class="wp-block-input" required style="width: 100%; padding: 10px; "> <!-- Reduced margin-bottom -->
                </div>

                <div class="form-group">
                    <label for="message">
                        <?php esc_html_e('Message', 'one-business-blocks'); ?>
                        <span style="color: red;">*</span>
                    </label>
                    <textarea id="message" name="message" class="wp-block-textarea" rows="5" required style="width: 100%; padding: 10px; "></textarea> <!-- Reduced margin-bottom -->
                </div>

                <input type="submit" name="submit_form" value="<?php esc_html_e('Send Message', 'one-business-blocks'); ?>" class="wp-block-button" style="padding: 10px 20px; background-color: var(--wp--preset--color--primary); color: #fff; border: none;">
            </form>
        </div>
    </div>
    <?php
    return ob_get_clean(); // Return the buffered content
}
add_shortcode('wpb_styled_contact_form', 'wpb_styled_contact_form');


function handle_form_submission_styled() {
    if (isset($_POST['submit_form'])) {
        // Sanitize form input
        $name = sanitize_text_field($_POST['first_name']);
        $last_name  = sanitize_text_field($_POST['last_name']);
        $email = sanitize_email($_POST['email']);
        $message = sanitize_textarea_field($_POST['message']);

        // Simple form validation
        if (!is_email($email)) {
            wp_redirect(add_query_arg('form_status', 'invalid_email', home_url()));
            exit;
        }

        // Prepare email details
        $to = 'info@cyberalphacloud.com'; // Send to admin email
        $subject = "New message from " . $name . " " . $last_name;
        $body = "Name: $name $last_name\nEmail: $email\n\nMessage:\n$message";
        $headers = array('Content-Type: text/plain; charset=UTF-8');

        // Send email
        wp_mail($to, $subject, $body, $headers);

        // Redirect with success message
        wp_redirect(add_query_arg('form_status', 'success', home_url('#contact')));
        exit;
    }
}
add_action('wp', 'handle_form_submission_styled');


// Handle the career application form submission
function handle_career_application_submission() {
    if (isset($_POST['submit_application'])) {
        // Sanitize form input
        $name = sanitize_text_field($_POST['first_name']);
        $last_name = sanitize_text_field($_POST['last_name']);
        $email = sanitize_email($_POST['email']);
        $about = sanitize_textarea_field($_POST['about']);
        $github = esc_url_raw($_POST['github']);
        $linkedin = esc_url_raw($_POST['linkedin']);
        
        // Simple form validation
        if (!is_email($email)) {
            wp_redirect(add_query_arg('form_status', 'invalid_email', home_url('#contact')));
            exit;
        }

        // Handle file upload
        $uploaded_file = $_FILES['resume'];
        if ($uploaded_file['error'] === UPLOAD_ERR_OK) {
            // Move uploaded file to a directory (e.g., uploads directory)
            $upload_dir = wp_upload_dir();
            $upload_path = $upload_dir['path'] . '/' . basename($uploaded_file['name']);

            if (move_uploaded_file($uploaded_file['tmp_name'], $upload_path)) {
                // File uploaded successfully
                $attachment = $upload_path;
            } else {
                wp_redirect(add_query_arg('form_status', 'file_error', home_url('#contact')));
                exit;
            }
        } else {
            wp_redirect(add_query_arg('form_status', 'file_error', home_url('#contact')));
            exit;
        }

        // Prepare email details
        $to = 'info@cyberalphacloud.com'; // Send to admin email
        $subject = "New job application from " . $name . " " . $last_name;
        $body = "Name: $name $last_name\nEmail: $email\nGitHub: $github\nLinkedIn: $linkedin\n\nAbout:\n$about";
        $headers = array('Content-Type: text/plain; charset=UTF-8');

        // Send email
        if (!empty($attachment)) {
            wp_mail($to, $subject, $body, $headers, array($attachment));
        } else {
            wp_mail($to, $subject, $body, $headers);
        }

        // Redirect with success message
        wp_redirect(add_query_arg('form_status', 'success', home_url('#contact')));
        exit;
    }
}
add_action('wp', 'handle_career_application_submission');
