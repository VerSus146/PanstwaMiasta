function send_answer(){

    let data = document.getElementById("answer").value;
    let query = document.getElementById("question").innerHTML;
    console.log(data)
    console.log(query)

    var httpc = new XMLHttpRequest();
    var url = "mysql_query.php";
    
    action = "data="+data;
    httpc.open("POST", url, true);
    
    httpc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpc.setRequestHeader("Content-Length", action.length);
    
    httpc.onreadystatechange = function() {
        if(httpc.readyState == 4 && httpc.status == 200) {
            switch(httpc.responseText){
                case "correct":
                    count_points(data);
                    break;
                    
                case "wrong":
                    console.log("Tez dziala, ale zla odpowiedz");
                    break;
            }
        }
    }
    httpc.send(action);

    function count_points(word){
        var pointsDiv = document.getElementById("points");
        var pointsToAdd = parseInt(word.replace(/\s+/g, '').length);
        var actualPoints = parseInt(pointsDiv.innerHTML);
        console.log(actualPoints);
        console.log(pointsToAdd + actualPoints);
        var newPointsNumber = pointsToAdd + actualPoints;
        
        pointsDiv.innerHTML = newPointsNumber;
        
        
    }
}