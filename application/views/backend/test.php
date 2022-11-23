<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewpor	t" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body>
	<div class="content-wrapper">
		<div class="content">
			<form action="<?php echo $_SERVER['SERVER_NAME'] ?>" method="GET">
				<input type="text" name="hi">
				<input type="text" name="hi0">
				<input type="submit" value="+" name="operand">
			</form>

			<!DOCTYPE html>
			<?php
			if (isset($_FILES['image'])) {
				$errors = array();
				$file_name = $_FILES['image']['name'];
				$file_size = $_FILES['image']['size'];
				$file_tmp = $_FILES['image']['tmp_name'];
				$file_type = $_FILES['image']['type'];
				$file_ext = strtolower(end(explode('.', $_FILES['image']['name'])));

				$extensions = array("jpeg", "jpg", "png");

				if (in_array($file_ext, $extensions) === false) {
					$errors[] = "extension not allowed, please choose a JPEG or PNG file.";
				}

				if ($file_size > 2097152) {
					$errors[] = 'File size must be excately 2 MB';
				}

				if (empty($errors) == true) {
					move_uploaded_file($file_tmp, "images/" . $file_name);
					echo "Success";
				} else {
					print_r($errors);
				}
			}
			?>
			<html>

			<body>

				<form action="" method="POST" enctype="multipart/form-data">
					<input type="file" name="image" />
					<input type="submit" />

					<ul>

						<?php if (isset($_FILES['image']['name']) && isset($_FILES['image']['size']) && isset($_FILES['image']['type'])) { ?>
							<li>Sent file: <?php echo $_FILES['image']['name'];  ?>
							<li>File size: <?php echo $_FILES['image']['size'];  ?>
							<li>File type: <?php echo $_FILES['image']['type'] ?>
							<?php } ?>

					</ul>

				</form>

			</body>

			</html>

			<p><strong>Note:</strong> You might have to reload the page to see the value of the cookie.</p>

</body>

</html>
















</div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>

<script>
	$(document).ready(function() {

	})
</script>


</body>

</html>

