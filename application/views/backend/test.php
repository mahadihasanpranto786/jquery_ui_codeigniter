<div class="content-wrapper">
    <div class="content">


        <?php

        const  UNITS = ['MILES_CONVERSION' => 2, 'INCHES_CONVERSION' => 3];
        $data =  "2" . 5 + UNITS['INCHES_CONVERSION'];

        var_dump($data);


        class MyClass
        {
            public function getClassName()
            {
                return "this is -" . __CLASS__;
            }
        }
        $obj = new MyClass();
        echo $obj->getClassName();
        ?>



        <form method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
            Name: <input type="text" name="fname">
            Name: <input type="text" name="s_fname">
            <input type="submit">
        </form>

        <?php
        if ($_SERVER["REQUEST_METHOD"] == "get") {
            // collect value of input field
            $name = $_POST['fname'];
            $s_name = $_POST['s_fname'];

            if (empty($name) && empty($s_name)) {
                echo "Name is empty";
            } else {
                echo $name . "<br>" . $s_name;
            }
        }
        ?>
    </div>
</div>


<script src="<?php echo base_url('') ?>assets/backend/plugins/jquery/jquery.min.js"></script>

<script>
    $(document).ready(function() {

        var dataList = [
            data => 'value',
            data1 => 'value1',
            data2 => 'value2',
            data3 => 'value3',
            data4 => 'value4'
        ]

        $.each(dataList, function(key, value) {
            if (key == [2] || key == [3]) {

            } else {
                console.log(key + ' is skipped');
            }
        })

        function changeValue(a) {
            console.log('Value of a inside function before changing: ' + a);
            a = 10;
            console.log('Value of a inside function after changing: ' + a);
            return a;
        }

        var a = 100;
        console.log('Value of a before changing function is applied: ' + a);
        changeValue(a);
        console.log('Value of a after changing function is applied: ' + a);
        // var arrayName = new Array('Rahim', 'Karim', 'Rafiq', 'Jabbar');
        // var arrName = ['Rahim', 'Karim', 'Rafiq', 'Jabbar'];
        /* for (var i = 0; i < arrName.length; i++) {
            arrNameData.push()
        } */
        // console.log(arrName.splice(0,2,3));
        // console.log(arrName);


        /*   for (var i = 0; i < 10; i++) {
              if (i === 5) {
                  console.log(i + ' is skipped');
                  continue;
              }
              console.log('i is now at: ' + i);
          } */

        /*    var value = 10;
           var value2 = 10;

           switch (value2) {
               case value == value2:
                   document.write('the value and data type is equal');
                   break;

               case value == value2:
                   document.write('the value is equal');
                   break;

               default:
                   document.write('the value is equal na');
           } */

    })
</script>