function send_answer(){

    let data = document.getElementById("answer").value;

    console.log(data)

    var httpc = new XMLHttpRequest();
    var url = "mysql_query.php";
    
    action = "data="+data;
    httpc.open("POST", url, true);
    
    httpc.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    httpc.setRequestHeader("Content-Length", action.length);
    
    httpc.onreadystatechange = function() {
        if(httpc.readyState == 4 && httpc.status == 200) {
            alert(httpc.responseText)
        }
    }
    httpc.send(action);

}