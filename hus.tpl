<!DOCTYPE html>
<html>
<head>
	<title>Lokaverkefni</title>
	<link rel="stylesheet" type="text/css" href="/Myndir/hus.css">
	<meta charset="utf-8">
</head>
<body>
	<%
	print("debug") 
   import json
   with open("hus.json","r", encoding="utf-8") as skra:
       hus = json.load(skra)
   end
  %>


	%for i in hus["hus"]:
	%	if name == i["Stadsetning"]:
	<div class="haus">
	<h3>Staðsetning <br>{{i["Stadsetning"]}}</h3>
	<h3>Verð<br>{{i["verd"]}}</h3>
	<h3>Stærð í fermetrum<br>{{i["staerd"]}}</h3>
	<h3>Tegund hús<br>{{i["tegund"]}}</h3>
	<h3>Fjöldi herbergja<br>{{i["herbergi"]}}</h3>
	</div>
	%	end
	% end

	<div class="rapper">
     	<img src="/Myndir/Vatnhus1.png">

     	<form method='get' action='/data' accept-charset="ISO-8859-1">

     	  <h2>Breyta information</h2>
          <h2>Login</h2>
          Notendanafn:<br>
          <input type="text" name='nafn' placeholder="Notendanafn" required=""><br>
          Lykilorð:<br>
          <input type="text" name='lykilord' placeholder="****" required=""><br>

          <input type='submit' value='login'>
          <input type='reset' value='Hreinsa'>
  		</form>    
	</div>
</body>
</html>
