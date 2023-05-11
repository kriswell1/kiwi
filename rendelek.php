
<?php

    $db_pass = 'DnjeWf5)cejJnK92';

    $db_name = 'valami2';

    if ( isset($_POST['cim']) && isset($_POST['osszeg']) ) {

       

        $dbh = new PDO("mysql:host=localhost;dbname=$db_name", $db_name, $db_pass);

        $sql = "INSERT INTO rendeles (szalllitasicim, osszeg) 
            VALUES 
            ('{$_POST['cim']}', '{$_POST['osszeg']}')
        ";

        $dbh->query($sql); 
        
    }
    
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-16">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script language="JavaScript" src="script.js" type="text/javascript"></script>
    
    
    
    <title>Document</title>
</head>
<body>
    <header></header>
    <nav>
       
       <ul>
            <li>
                <a href="index.php">Kezdőlap</a>
            </li>

            <li>
                <a href="halak.php" target="blank">Díszhalak</a>
            </li>
            <li>
                <a href="kutyak.php" target="blank">Kutyák</a>
            </li>
            <li>
                <a href="macskak.php" target="blank">Macskák</a>
            </li>
            <li>
                <a href="madarak.php" target="blank">Madarak</a>
            </li>
            <li>
                <a href="">Rendelek</a>
            </li>
            <li>
                <a href="login.php">Kilépek</a>
            </li>
        </ul>
       
    </nav>
    <aside>aside
        <section>section1</section>
        <section>section2</section>
    </aside>
    <main>
    <form action="" method="post">

      


        <h1>Rendelek</h1>
        <label for="">Írja be az állat nevét</label>
        <input type="text" id="txt1" onkeyup="showHint(this.value)"><br>
        Javaslat:<span id="txtHint1"></span><br><br>

        <label for="">Szállítási cím</label>
        <input type="text" size="50" name="cim" id="cim" onclick="rendel()"><br>

        <label for="">Fizetendő:</label>
        <span name="osszeg" id="osszeg"></span> Ft.
        <br><br>


        <button>Elküld</button>
    </form><br>



    

    </main>
    <footer> &copy KIWI 2023</footer>

</body>
</html>