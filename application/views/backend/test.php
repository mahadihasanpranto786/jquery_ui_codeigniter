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


        function f($required, $optional = null, ...$variadicParams)
        {
            printf(
                'Required: %s; Optional: %d; number of variadic parameters: %d' . "\n",
                $required,
                $optional,
                count($variadicParams)
            );
        }
        echo f(1) . "<br>";
        echo f(1, 2) . "<br>";
        echo f(1, 2, 3) . "<br>";
        echo f(1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4) . "<br>";
        // this produces a fatal error: Too few arguments


        function foo()
        {
            echo 'Foo';
        }
        $var = 'foo';
        $var(); // calls foo()
        function getFullName(string $firstName, string $lastName): string
        {
            return 123;
        }
        $name = getFullName('Mary', 'Moon');
        echo gettype($name);;



        function A(bool $a)
        {
            var_dump($a);
        }
        echo A(0);
        class GFG
        {
            function print()
            {
                echo 'Parent Class';
            }

            function bar()
            {
                $this->print();
            }
        }

        class Child extends GFG
        {
            function print()
            {
                echo 'Child Class';
            }
        }

        $parent = new Child();
        $parent->bar();
        echo  "<br>";



        class foo
        {
            public $value = 42;

            function &getValue()
            {
                return $this->value;
            }
        }

        $obj = new foo;
        $myValue = &$obj->getValue(); // $myValue is a reference to $obj->value, which is 42.
        $obj->value = 2;
        echo $myValue;
        echo "<br>";

        function foor()
        {
            $numargs = func_num_args();
            echo "Number of arguments: $numargs\n";
            if ($numargs > 3) {
                echo "Second argument is: " . func_get_arg(3) . "\n";
            }
        }

        foor(1, 2, 3,90);
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


        console.log('Value: ' + x);



    })
</script>