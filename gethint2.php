<?php
$a=Array("Papagáj","Amandina","Zebrapinty","Beó");
$q=$_POST["q"];
if (strlen($q) > 0) {
$hint="";
for($i=0; $i<count($a); $i++) {
if (strtolower($q)==strtolower(substr($a[$i],0,strlen($q))))
if ($hint=="") $hint=$a[$i]; else $hint=$hint." , ".$a[$i];
}
}
if ($hint == "") $response="no suggestion";
else $response=$hint;
echo $response;
?> 