var question_display = document.getElementById("question");

function database_query() {

    var query;
    let random_number = Math.floor(Math.random() * 3);;
    
    switch(random_number){
        case 0:
        query = "Państwo";
        break;

        case 1:
        query = "Miasto";
        break;

        case 2:
        query = "Kolor";
        break;
    }

    document.getElementById("question").innerHTML = query;
}