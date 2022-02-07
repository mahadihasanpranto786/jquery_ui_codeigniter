 <style>
     body {
         background-color: #333;
     }

     .box {
         margin: 0 auto;
         width: 240px;
     }

     .box .box-content {
         background-color: grey;
         height: 100px;
         text-align: center;
         color: #fff;
         line-height: 100px;
         text-transform: uppercase;
         font-weight: bold;
         margin: 15px;
     }

     #box-1 {
         background-color: #ff3c41;
     }

     #box-2 {
         background-color: #b9f;
     }

     #box-3 {
         background-color: #0ebeff;
     }

     #box-4 {
         background-color: #47cf73;
     }

     #box-5 {
         background-color: #ffdd40;
         color: #333;
     }
 </style>
 <div class="content-wrapper">
     <div class="content">
         <div class="box">
             <div class="box-content" id="box-1">
                 Box 1
             </div>
             <div class="box-content" id="box-2">
                 Box 2
             </div>
             <div class="box-content" id="box-3">
                 Box 3
             </div>
             <div class="box-content" id="box-4">
                 Box 4
             </div>
             <div class="box-content" id="box-5">
                 Box 5
             </div>
         </div>








         <?php $number = 12.49213;

            // 1,235
            //echo number_format($number) . PHP_EOL;
            // 1,234.568
            //echo number_format($number, 5) . PHP_EOL;
            // 1.234,57
            echo number_format($number, 3, ',', '351') . PHP_EOL;  ?>

     </div>
 </div>

 <script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>
 <script>
     var numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
     var findNum = numbers.map(function(theNum) {
         return theNum === 65;
     });
 </script>