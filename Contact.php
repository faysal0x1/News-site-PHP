<?php include 'header.php'; ?>

<form method="post" action="process.php">
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="text" class="form-control" name="name" required>
  </div>

  <div class="form-group">
    <label for="email">Email:</label>
    <input type="email" class="form-control" name="email" required>
  </div>

  <div class="form-group">
    <label for="message">Message:</label>
    <textarea class="form-control" name="message" rows="5" required></textarea>
  </div>

  <button type="submit" class="btn btn-primary">Send</button>
</form>

<?php include 'footer.php'; ?>