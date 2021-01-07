window.onload = function() {
    //var content = document.getElementsByTagName("li");
    //var text = content[1].firstChild;
    //console.log(text.nodeValue);

    //var content = document.querySelectorAll("ul .first");
    //console.log(content);
    //console.log(content[0].getAttribute("href"));

    let other = new evan.constructor('56','John')

    evan.__proto__.getName = function() {
        console.log(this.name)
    }

    evan.getScore();

    other.getScore();

    other.getName();
    evan.getName();
}

function Student(score,name) {
    this.score = score
    this.name = name
}
  
Student.prototype.getScore = function getScore() {
    console.log("Score is: " + this.score)
}


let evan = new Student("87","Evan")

