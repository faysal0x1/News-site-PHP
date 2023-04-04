<?php

include "config.php";

$post_id = $_GET['id'];
$cate_id = $_GET['catid'];

$sql = "delete from post where post_id={$post_id};";

$sql .= "update category set set post =post-1 where category_id={$cat_id}";

if(mysqli_multi_query($conn,$sql))
{
    header("Location: {$hostname}/admin/post.php");
}
else{
    echo "Query failed";
}