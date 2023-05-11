




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
                <a href="macskak.php">Macskák</a>
            </li>
            <li>
                <a href="madarak.php">Madarak</a>
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
    
    
    

     <h1>Madarat rendelek</h1>
    <label for="">Írja be a madár nevét</label>
    <input type="text" id="txt2"><br>
     Javaslat:<span id="txtHint2"></span><br><br>

     <h1>Kutyát rendelek</h1>
    <label for="">Írja be a kutya nevét</label>
    <input type="text" id="txt3" onkeyup="showHint(this.value)"><br>
     Javaslat:<span id="txtHint3"></span><br><br>


     <h1>Macskát rendelek</h1>
    <label for="">Írja be a macska nevét</label>
    <input type="text" id="txt4"><br>
     Javaslat:<span id="txtHint4"></span><br><br>

     <label for="">Szállítási cím</label>
     <input type="text" size="50" name="cim" id="cim"><br>

     <label for="">Fizetendő:</label>
     <span name="osszeg" id="osszeg"></span> Ft.
     <br><br>

    
     <button>Elküld</button>
     </form>

    </main>
    <footer> &copy KIWI 2023</footer>

</body>
</html>