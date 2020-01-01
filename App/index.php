<!DOCTYPE html>
<html lang="pl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title> Państwa Miasta </title>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="database_query.js"></script>
<script type="text/javascript" src="player_input.js"></script>

</head>
    <body onload="Init()">
        <div id="container">
        <div id="top">

        <span id="round">1/10</span>

        <h1><span id="question"></span></h1>

        <span id="timer">Time: 10</span>

        </div>
        <div id="content">

            <div id="highscore">
                <h3>Highscores</h3>
                <div id="scores">
                    <?php
                        include 'mysql_config.php';
                        $con = mysqli_connect($host, $db_user, $db_password, $db_name) or die("Błąd podczas łączenia do bazy");
                        mysqli_query($con, "SET NAMES utf8");
                        $result=mysqli_query($con,"SELECT * FROM `highscores` ORDER BY points DESC LIMIT 0, 10 ") or die("Zle zapytanie o kolory");
                        while ($row = $result->fetch_assoc()) {
                            echo $row['nickname']." ".$row['points']."<br />";
                        }
                    ?>
                </div>
            </div>

            <div id="game" class="main">
                <br /><br />
                <div id="points">0</div>
                    <input type="text" id="answer" value="">
                    <br /><br />
                    <input type="button" id="btn" value="Submit" onClick="send_answer()">
                </div>

                <div id="highscore_menu" class="main">
                    Provide us with Your nickname: <br  />
                    <input type="text" id="nickname" value="">
                    <br /><br />
                    <input type="button" id="nicknamebtn" value="Submit score" onClick="finish_game(document.getElementById('nickname').value)">
                </div>

                <div id="menu" class="main">
                    <h2>Menu</h2>
                    <input type="button" id="playbtn" value="Play Game" onClick="start_game()">
                    <input type="button" id="howtoplaybtn" value="How to play" onClick="how_to_play_menu()">
                </div>

                <div id="how_to_play" class="main">
                    <h3>How to play</h3>
                    <input type="button" id="citiesbtn" value="Check Cities" onClick="show_data('Miasto')">
                    <input type="button" id="colorbtn" value="Check Colors" onClick="show_data('Kolor')">
                    <input type="button" id="countryesbtn" value="Check Countries" onClick="show_data('Państwo')">
                    <br /><br />
                    Ymmm... That's easy! Just write Your answer in the box and click Submit!
                    <br /><br />
                    <input type="button" id="menubtn" value="Menu" onClick="menu_menu()">
                </div>

                <div id="how_to_play_display">
                    <div id="display_data"></div>
                    <br /> <br />
                    <input type="button" id="menubtn" value="Menu" onClick="menu_menu()">
                </div>
            </div>

        </div>
    </body>
</html>