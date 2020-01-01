var round = 1;

var interval;

var score;

function show_game(visibility){
    if(!visibility){
        document.getElementById("game").style.display = "none"
        document.getElementById("round").style.display = "none"
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("timer").style.display = "none"
    } else {
        document.getElementById("game").style.display = "block"
        document.getElementById("round").style.display = "inline"
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("timer").style.display = "inline"
    }
}

function show_how_to(visibility){
    if(!visibility){
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("how_to_play").style.display = "none"
    } else {
        document.getElementById("how_to_play").style.display = "block"
        document.getElementById("question").innerHTML = "City-Countries"
    }
}

function show_menu(visibility){
    if(!visibility){
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("menu").style.display = "none"
    } else {
        document.getElementById("menu").style.display = "block"
        document.getElementById("question").innerHTML = "City-Countries"
    }
}

function show_highscore(visibility){
    if(!visibility){
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("highscore_menu").style.display = "none"
    } else {
        document.getElementById("highscore_menu").style.display = "block"
        document.getElementById("question").innerHTML = "City-Countries"
    }
}

function show_how_to_items(visibility){
    if(!visibility){
        document.getElementById("question").innerHTML = "City-Countries"
        document.getElementById("how_to_play_display").style.display = "none"
    } else {
        document.getElementById("how_to_play_display").style.display = "block"
        document.getElementById("question").innerHTML = "City-Countries"
    }
}

function menu_menu(){
    show_how_to_items(false);
    show_how_to(false);
    show_menu(true); 
    show_game(false); 
    show_highscore(false);
}

function how_to_play_menu(){
    show_how_to_items(false);
    show_how_to(true);
    show_menu(false); 
    show_game(false);
    show_highscore(false);

}

function start_game(){
    show_how_to_items(false);
    show_how_to(false);
    show_menu(false); 
    show_highscore(false);

    show_game(true);

    interval = setInterval(timer, 1000);
    database_query();
}

function menu_highscore(){
    score = parseInt(document.getElementById("points").innerHTML);
    show_how_to_items(false);
    show_how_to(false);
    show_menu(false); 
    show_game(false);
    show_highscore(true);
}

function menu_highscore_diplay(){
    show_how_to_items(true);
    show_highscore(false);
    show_game(false);
    show_how_to(false);
    show_menu(false);
}

function Init(){
    show_how_to_items(false);
    show_highscore(false);
    show_game(false);
    show_how_to(false);
    show_menu(true);
}

function show_data(item){
    let data = "";
    let query = item;
    let type = "get_data";

    var httpc = new XMLHttpRequest();
    var url = "mysql_query.php";
    
    action = "&query="+query+"&type="+type;
    // Open connection to PHP file
    httpc.open("POST", url, true);
    // Set header which is going to be sent to php file
    httpc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpc.setRequestHeader("Content-Length", action.length);
    // Sending data to php
    httpc.onreadystatechange = function() {
        if(httpc.readyState == 4 && httpc.status == 200) {
            let arr = httpc.responseText.split(",");
            menu_highscore_diplay();
            for (var i = 0; i < arr.length; i++) {
                console.log(arr[i]);
                document.getElementById("display_data").innerHTML += arr[i] + ", ";
            }            
        }
    }
    // send back to html
    httpc.send(action);
}

function send_answer(){

    let data = document.getElementById("answer").value;
    let query = document.getElementById("question").innerHTML;
    let type = "compare";

    var httpc = new XMLHttpRequest();
    var url = "mysql_query.php";
    
    action = "data="+data+"&query="+query+"&type="+type;
    // Open connection to PHP file
    httpc.open("POST", url, true);
    // Set header which is going to be sent to php file
    httpc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpc.setRequestHeader("Content-Length", action.length);
    // Sending data to php
    httpc.onreadystatechange = function() {
        if(httpc.readyState == 4 && httpc.status == 200) {
            // Putting response from php file to if statement
            if(!isNaN(httpc.responseText)){
                count_points(httpc.responseText);
            } else {
                console.log(httpc.responseText);
            }         
        }
    }
    // send back to html
    httpc.send(action);
}

function count_points(pointsToAdd){
    var pointsDiv = document.getElementById("points");
    var actualPoints = parseInt(pointsDiv.innerHTML);
    var newPointsNumber = parseInt(pointsToAdd) + parseInt(actualPoints);
    
    pointsDiv.innerHTML = newPointsNumber;

    next_round(++round);
}

function next_round(roundn){
    if(roundn<11){
        database_query();
        time = 10;
        document.getElementById("round").innerHTML = roundn + "/10";
        document.getElementById("timer").innerHTML = "Time: " + time;
    } else {
        menu_highscore();
    }
}

function finish_game(nickname){
    document.getElementById("timer").innerHTML = "Game Over";
    clearInterval(interval);
    document.getElementById("btn").disabled = true;
    document.getElementById("round").innerHTML = "";

    let data = parseInt(document.getElementById("points").innerHTML);
    let query = "Submit";
    let compare = "submit";

    var httpc = new XMLHttpRequest();
    var url = "mysql_query.php";

    action = "data="+data+"&query="+query+"&nickname="+nickname;

    httpc.open("POST", url, true);
    
    httpc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpc.setRequestHeader("Content-Length", action.length);

    httpc.send(action);

    menu_menu();
}