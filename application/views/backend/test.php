<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
</head>

<body>
	<div class="content-wrapper">
		<div class="content">
			<?php

			class MethodExample
			{
				private $name;
				// explicitly specified visibility
				public function setName($name)
				{
					$this->name = $name;
				}
				// public visibility by default
				function getName($name)
				{
					echo $this->name;
				}
			}

			?>



















		</div>
	</div>


	<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>

	<script>
		$(document).ready(function() {

		})
	</script>


</body>

</html>

