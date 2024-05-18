<?php include "header.php";?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">All Posts</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-post.php">add post</a>
              </div>
              <div class="col-md-12">
                <?php
include "config.php"; // database configuration
/* Calculate Offset Code */
$limit = 3;
if (isset($_GET['page'])) {
    $page = $_GET['page'];
} else {
    $page = 1;
}
$offset = ($page - 1) * $limit;

if ($_SESSION["user_role"] == '1') {
    /* select query of post table for admin user */
    $sql = "SELECT * from messages ORDER BY id DESC LIMIT {$offset},{$limit}";
}

$result = mysqli_query($conn, $sql) or die("Query Failed.");
if (mysqli_num_rows($result) > 0) {
    ?>
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Message</th>
                      </thead>
                      <tbody>
                        <?php
$serial = $offset + 1;
    while ($row = mysqli_fetch_assoc($result)) {?>
                          <tr>
                              <td class='id'><?php echo $serial; ?></td>
                              <td><?php echo $row['name']; ?></td>
                              <td>
                                <a href="mailto:<?php echo $row['email']; ?>"><?php echo $row['email']; ?></a>
                              </td>
                              <td>
                                <textarea name="" id="" rows="4"  disabled><?php echo $row['message']; ?></textarea>
                              </td>
                          </tr>
                          <?php
$serial++;}?>
                      </tbody>
                  </table>
                  <?php
} else {
    echo "<h3>No Results Found.</h3>";
}
// show pagination
if ($_SESSION["user_role"] == '1') {
    /* select query of post table for admin user */
    $sql1 = "SELECT * FROM post";
} elseif ($_SESSION["user_role"] == '0') {
    /* select query of post table for normal user */
    $sql1 = "SELECT * FROM post
                  WHERE author = {$_SESSION['user_id']}";
}
$result1 = mysqli_query($conn, $sql1) or die("Query Failed.");

if (mysqli_num_rows($result1) > 0) {

    $total_records = mysqli_num_rows($result1);

    $total_page = ceil($total_records / $limit);

    echo '<ul class="pagination admin-pagination">';
    if ($page > 1) {
        echo '<li><a href="post.php?page=' . ($page - 1) . '">Prev</a></li>';
    }
    for ($i = 1; $i <= $total_page; $i++) {
        if ($i == $page) {
            $active = "active";
        } else {
            $active = "";
        }
        echo '<li class="' . $active . '"><a href="post.php?page=' . $i . '">' . $i . '</a></li>';
    }
    if ($total_page > $page) {
        echo '<li><a href="post.php?page=' . ($page + 1) . '">Next</a></li>';
    }

    echo '</ul>';
}
?>
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php";?>
