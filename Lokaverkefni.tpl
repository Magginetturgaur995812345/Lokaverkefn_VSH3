<!DOCTYPE html>
<html lang="is"> 
  <head>
    <title>Lokaverkefni</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="Myndir/lokaverkefni.css">
  </head>
  <body>  
  <% 
   import json
   with open("hus.json","r", encoding="utf-8") as skra:
       hus = json.load(skra)
   end
  %>
    %for i in hus["hus"]:
      <div class="wrapper">
      <img class="mynd" src="/Myndir/Vatnhus1.png">
      <h3>Staðsetning : {{i["Stadsetning"]}}</h3>
      <h3>Verð : {{i["verd"]}}</h3>
      <h3>Stærð í fermetrum : {{i["staerd"]}}</h3>
      <h3>Tegund hús : {{i["tegund"]}}</h3>
      <h3>Fjöldi herbergja : {{i["herbergi"]}}</h3>
      </div>
    %end
  </body>
</html>
