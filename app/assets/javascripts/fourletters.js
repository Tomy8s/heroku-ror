//By T.Yates
var words = ["axes", "buys", "cars", "dogs", "duck", "done", "eats", "fast", "find", "fish", "game", "have", "hide", "isle", "july", "jump", "june", "just", "kilo", "lock", "made", "make", "neck", "open", "push", "puts", "quit", "rent", "ring", "runs", "swam", "swim", "swum", "taxi", "type", "undo", "vile", "walk", "wake", "what", "when", "woke", "wore", "work", "year", "your"];
var word = words[Math.ceil(Math.random()*words.length)];
function play() {
    if (document.getElementById('guess').value.length != 4) {
        alert("Please enter a 4-letter word");
    } else {
        //var word = "fish";
        var guess = document.getElementById('guess').value.toLowerCase();
        var rw = 0;
        var rr = 0;
        
        for (c = 0; c < 4; c++) {
            if (word[c] == guess[c]) {
                rr++;
            }else for (d = 0; d < 4; d++) {
                if (word[c] == guess[d]) {
                    rw++;
                    break;
                }
            }
        }
        
        var row = document.createElement('TR');
        var rwcell = document.createElement('TD');
        var rwval = document.createTextNode(rw);
        var rrcell = document.createElement('TD');
        var rrval = document.createTextNode(rr);
        var gucell = document.createElement('TD');
        var guval = document.createTextNode(guess);
        
        rwcell.appendChild(rwval);
        rrcell.appendChild(rrval);
        gucell.appendChild(guval);
        
        row.appendChild(rwcell);
        row.appendChild(rrcell);
        row.appendChild(gucell);
            
        document.getElementById("list").appendChild(row);
        document.getElementById('guess').value = "";
        
        if (rr === 4) {
            alert("Congratulations! The correct answer is "+word+"!")
        }
    }
}
//By T.Yates