<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    $db_host = 'localhost';
    $db_user = 'root';
    $db_pass = '';
    $db_name = 'sahil_gosaliya_db_winter24';

    $connection = mysqli_connect($db_host, $db_user, $db_pass, $db_name);
    $errors = array();

    $name = mysqli_real_escape_string($connection, $_POST['name']);
    if ($name == NULL) {
        $errors[] = "Last name field is empty.";
    }

    $email = $_POST['email'];
    if ($email == NULL) {
        $errors[] = "Email field is empty.";
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        $errors[] = "\"" . $email . "\" is not a valid email address.";
    }

    $company = mysqli_real_escape_string($connection, $_POST['company']);
    if ($company == NULL) {
        $errors[] = "First name field is empty.";
    }

    
    $phone = mysqli_real_escape_string($connection, $_POST['phone']);
    if ($phone == NULL) {
        $errors[] = "First name field is empty.";
    }

    $msg = mysqli_real_escape_string($connection, $_POST['msg']);
    if ($msg == NULL) {
        $errors[] = "City field is empty.";
    }


    $errcount = count($errors);
    if ($errcount > 0) {
        $errmsg = array();
        for ($i = 0; $i < $errcount; $i++) {
            $errmsg[] = $errors[$i];
        }
        echo json_encode(array("errors" => $errmsg));
    } else {
        $querystring = "INSERT INTO contact(id,name,email,company,phone,msg) VALUES(NULL,'" . $name . "','" . $email . "','" . $company . "','" . $phone . "','" . $msg . "')";
        $qpartner = mysqli_query($connection, $querystring);
        echo json_encode(array("message" => "Form submitted. Thank you for your interest!"));
    }
?>