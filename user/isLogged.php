<?php
session_start();

if (!(isset($_SESSION['user']) && $_SESSION['user'] != '')) {

    // User is not logged in!
    $result = array(
        'error' => true,
        'msg' => 'Xin hãy đăng nhập'
    );
  
} else {

    // write the needed code to save the vote to db here

    $result = array(
        'error' => false,
        'msg' => $_SESSION['user']
    );
}

// Return JSON to ajax call
header('Content-type: application/json');
echo json_encode($result);