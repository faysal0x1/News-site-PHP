<?php

include "config.php";

if (empty($_FILES['new-image']['name'])) {
    $file_name = $_POST['old_image'];
} else {
    $errors = array();

    $file_name = $_FILES['new-image']['name'];
    $file_size = $_FILES['new-image']['size'];
    $file_tmp = $_FILES['new-image']['tmp_name'];
    $file_type = $_FILES['new-image']['type'];
    $file_ext = strtolower(end(explode('.', $file_name)));

    $extensions = array("jpg", "jpeg", "png");


    if (in_array($file_ext, $extensions) === false) {
        $errors[] = "This type isnot allowed.  Please choose jpg or png";
    }

    if ($file_size > 2097152) {
        $errors[] = "This size isnot allowed.  Please choose 2Mb or lower";
    }
    if (empty($errors) == true) {
        move_uploaded_file($file_tmp, "upload/" . $file_name);
    } else {
        print_r($errors);
        die();
    }
}


$sql = "update post set title='{$_POST['post_title']}',description='{$_POST["postdesc"]}',category={$_POST["category"]},post_img='{$file_name}',
        where post_id={$_POST["post_id"]}";


$result = mysqli_query($conn, $sql);

if($result){
    header("Location: {$hostname}/admin/post.php");
}else{
    echo "qUEry Failed";
}