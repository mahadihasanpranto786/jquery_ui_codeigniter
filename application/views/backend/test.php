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

			class Properties
			{
				// You do not have to specify a default value
				public $email;
				// A scalar value is an expression
				protected $name = 'Alice';
				// An array is an expression
				protected $accounts = ['cheque', 'savings'];
				// You can use a constant expression as a default value
				private $balance = 60 * 5;
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

