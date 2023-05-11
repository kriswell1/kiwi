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
    
    <title>Document</title>
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
    <main id="dog">
    
        

    
    <?php 
     $dbh = new PDO("mysql:host=localhost;dbname=$db_name", $db_name,$db_pass);
     $result = $dbh->query("SELECT * FROM dog");
     $kutyak = $result->fetchAll(PDO::FETCH_ASSOC);
    ?>
    <?php foreach( $kutyak as $key => $item ) { ?>
                            <div>
                            <img src="<?= $item['url'] ?>" alt="<?= $item['nev'] ?>"><br>
                             <span><?= $item['nev'] ?></span>   <span><?= $item['ar'] ?> FT</span>
                            </div>
                        <?php } ?>

   
        
           
   

    
    
    </main>
    <footer> &copy KIWI 2023</footer>

</body>
</html>