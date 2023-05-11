<?php
$db_name='valami2';

$db_pass='DnjeWf5)cejJnK92';

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-16">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <script language="JavaScript" src="script4.js" type="text/javascript"></script>
    <title>Madarak</title>
</head>
<body>
    <header>
    
    </header>
    <nav>
        <ul>
            <li>
                <a href="index.php">Kezdőlap</a>
            </li>
            <li>
                <a href="halak.php">Díszhalak</a>
            </li>
            <li>
                <a href="kutyak.php">Kutyák</a>
            </li>
            <li>
                <a href="macskak.php">Macskák</a>
            </li>
            <li>
                <a href="madarak.php">Madarak</a>
            </li>
        </ul>
    </nav>
    <aside>aside
        <section>section1</section>
        <section>section2</section>
    </aside>
    <main id="madarak">

    <form action="" method="post">

    <h1>Madarat rendelek</h1>
    <label for="">Írja be a madár nevét</label>
    <input type="text" id="txt4" onkeyup="showHint(this.value)"><br>
     Javaslat:<span id="txtHint4"></span><br><br>
     <label for="">Szállítási cím</label>
     <input type="text" size="50" name="cim" id="cim"><br>

     <label for="">Fizetendő:</label>
     <span name="osszeg" id="osszeg"></span> Ft.
     <br><br>

    
     <button>Elküld</button>
    </form>
    
    <?php 
     $dbh = new PDO("mysql:host=localhost;dbname=$db_name", $db_name,$db_pass);
     $result = $dbh->query("SELECT * FROM bird");
     $madarak = $result->fetchAll(PDO::FETCH_ASSOC);
    ?>
    <?php foreach( $madarak as $key => $item ) { ?>
                            <div>
                            <img src="<?= $item['url'] ?>" alt="<?= $item['nev'] ?>"><br>
                             <span><?= $item['nev'] ?></span>   <span><?= $item['ar'] ?> FT</span>
                            </div>
                        <?php } ?>

   
        
           
   

    
    
    </main>
    <footer> &copy KIWI 2023</footer>

</body>
</html>