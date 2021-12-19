<?php if (!defined('BASEPATH')) exit('No direct script access allowed');


function checkSimilarity($new, $old)
{
	if ($new != $old) {
		echo 'background:chocolate';
	}
}

function quickAccessB()
{
	$xcaliver = &get_instance();
	$data['nothing'] = '';
	$xcaliver->load->view('reports_b/quickaccess_b', $data);
}
?>
<!-- have wrong in here  -->
<script>
	function getCurrentDatejs(f_id) {
		var d = new Date();
		var n = d.getFullYear();
		document.getElementById(f_id).innerHTML = n;
	}
</script>