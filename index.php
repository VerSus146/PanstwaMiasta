<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Państwa Miasta </title>

    <link rel="stylesheet" href="style.css">
    <script type="text/javascript" src="player_input.js"></script>
    <script type="text/javascript" src="database_query.js"></script>

</head>
<body onload="database_query()">
<div id="container">
<div id="top">

<h1>Tu będzie wylosowana rzecz</h1>

</div>
<div id="content">

    <div class="main">

<h2>Tutaj będzie miejsce na odpowiedź</h2><input type="text" id="tx" value="">

<br /><br />

<input type="button" id="btn" value="OK" onClick="player_input()">

<div id="box"></div>

    </div>
</div>

</div>
</body>
</html>
