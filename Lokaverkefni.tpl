<!DOCTYPE html>
<html lang="is"> 
  <head>
    <title>Lokaverkefni</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="/Myndir/lokaverkefni.css">
  </head>
  <body>  
  <% 
   import json
   with open("hus.json","r", encoding="utf-8") as skra:
       hus = json.load(skra)
   end
  %>
  <%
  listi=[]
  for i in hus["hus"]:
    if i["Stadsetning"] not in listi:
      listi.append(i["Stadsetning"])
    end
  end
  %>

  %for i in hus["hus"]:
    <div>
      <img src="/Myndir/Vatnhus1.png">
      <section>
        <h3>Staðsetning : {{i["Stadsetning"]}}</h3>
        <h3>Verð : {{i["verd"]}}</h3>
        <h3>Stærð í fermetrum : {{i["staerd"]}}</h3>
        <h3>Tegund hús : {{i["tegund"]}}</h3>
        <h3>Fjöldi herbergja : {{i["herbergi"]}}</h3>
      </section>
    </div>
    <br>
  %end
  %for i in listi:
    <section class="breyting">
    <a href="/stadsetning/{{i}}">Breyta {{i}}</a>
    </section>
  %end
  </body>
</html>
