<?php

    $db_pass = 'DnjeWf5)cejJnK92';

    $db_name = 'valami2';

    if ( isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password']) ) {

       //header("Location:belepve.php");

        $dbh = new PDO("mysql:host=localhost;dbname=$db_name", $db_name, $db_pass);

        $sql = "INSERT INTO users (name, email, password) 
            VALUES 
            ('{$_POST['name']}', '{$_POST['email']}', SHA1('{$_POST['password']}'))
        ";

        $dbh->query($sql); 
        header("Location:belepve.php");
    }
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
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
            <li>
                <a href="login.php">Belépek</a>
            </li>
        </ul>
       
    </nav>
    <aside>aside
        <section>section1</section>
        <section>section2</section>
    </aside>
    <main>
    
   <form action="" method="post">
        <label for="">Név</label>
        <input type="text" name="name"><br>

        <label for="">Email cím</label>
        <input type="text" name="email"><br>

        <label for="">Jelszó</label>
        <input type="password" name="password"><br>

        
    

        <button>Elküld</button>
    </form>
    </main>
    
</main>
<footer> &copy KIWI 2023</footer>
</body>
</html>