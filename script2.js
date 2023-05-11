
var xmlHttp;
function stateChanged() {
if (xmlHttp.readyState==4) {
document.getElementById("txtHint2").innerHTML=
xmlHttp.responseText;
}
}

function showHint(str) {
    if (str.length==0) {
    document.getElementById("txtHint2").innerHTML=""; return;
    }
    xmlHttp=new XMLHttpRequest();
    var url = "gethint3.php";
    var parameterek = "q="+str+"&sid="+Math.random();
    xmlHttp.onreadystatechange=stateChanged;
    xmlHttp.open("POST",url,true);
    xmlHttp.setRequestHeader("Content-type",
    "application/x-www-form-urlencoded");
    xmlHttp.send(parameterek);
    }


