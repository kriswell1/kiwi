
var xmlHttp;
function stateChanged() {
if (xmlHttp.readyState==4) {
document.getElementById("txtHint1").innerHTML=
xmlHttp.responseText;
}
}

function showHint(str) {
    if (str.length==0) {
    document.getElementById("txtHint1").innerHTML=""; return;
    }
    xmlHttp=new XMLHttpRequest();
    var url = "gethint.php";
    var parameterek = "q="+str+"&sid="+Math.random();
    xmlHttp.onreadystatechange=stateChanged;
    xmlHttp.open("POST",url,true);
    xmlHttp.setRequestHeader("Content-type",
    "application/x-www-form-urlencoded");
    xmlHttp.send(parameterek);
    }


function rendel(){

    var nev= document.getElementById('txt1').value;    
    var osszeg = document.getElementById('osszeg');
    
    switch(nev){
        case 'Neonhal':
            osszeg.innerHTML="200";break;
        
        case 'Vitorláshal':
            osszeg.innerHTML="500";break;
        case 'Törpe gurámi':
                osszeg.innerHTML="1500";break;
        case 'Ázsiai cápaharcsa':
                    osszeg.innerHTML="2500";break;
        case 'Szifó':
                    osszeg.innerHTML="200";break;
        case 'Vöröshasú pirája':
                    osszeg.innerHTML="4500";break;
        case 'Diszkoszhal':
                    osszeg.innerHTML="4500";break;
        case 'Hácsi':
                    osszeg.innerHTML="80000";break;
        case 'Breki':
                    osszeg.innerHTML="5000";break;
         case 'Pufi':
                    osszeg.innerHTML="15000";break;
        case 'Flipper':
                     osszeg.innerHTML="5000";break;
        case 'Csibész':
                    osszeg.innerHTML="55000";break;  
        case 'Pici':
                    osszeg.innerHTML="3000";break; 
        case 'Pipp':
                    osszeg.innerHTML="30000";break; 
        case 'Inci':
                    osszeg.innerHTML="2000";break; 
        case 'Papagáj':
                    osszeg.innerHTML="5000";break;               
        case 'Amandina':
                    osszeg.innerHTML="35000";break;
        case 'Zebrapinty':
                    osszeg.innerHTML="2500";break;
        case 'Beó':
                    osszeg.innerHTML="1200";break;
    }
}