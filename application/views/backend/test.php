<div class="content-wrapper">
    <div class="content">


        <?php




        $string = "beautiful";
        $time = "winter";

        $str = 'This is a $string $time morning!';
        echo $str . "<br>";

        eval("\$str = \"$str\";");
        echo $str;

        $bankBalance = 10;
        if ($bankBalance == 0) : ?>
            <p class="black">df</p>

        <?php else : ?>
            <p class="red">f</p>


        <?php endif; ?>


        <?= $bankBalance ?>
        </p>
















    </div>
</div>