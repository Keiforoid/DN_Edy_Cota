class Customer {
    constructor(name, registered) {
        this.name = name;
        this.registered = registered;
    }
}

var customersList = [];
customersList.push(new Customer("Memo", "2011-03-21 12:20"));
customersList.push(new Customer("Frida", "2011-03-21 12:20"));
customersList.push(new Customer("Cinthia", "2011-03-21 13:00"));
customersList.push(new Customer("Carlota", "2012-03-21 14:00"));
customersList.push(new Customer("Pedro", "2012-03-21 15:00"));
customersList.push(new Customer("Guillermo", "2013-03-21 16:00"));
customersList.push(new Customer("Lalo", "2013-03-21 17:00"));
customersList.push(new Customer("Beto", "2014-03-21 18:00"));
customersList.push(new Customer("Roberto", "2014-03-21 8:00"));
customersList.push(new Customer("Ediberto", "2015-03-21 9:00"));

var htmlInsert = "<ul>";

for (var i = 0; i < customersList.length; i++) {
    htmlInsert += ("<li>" + customersList[i].name + ", " + customersList[i].registered + "</li>");
}

htmlInsert += "</ul>";

var element = document.getElementById("insertListHere");

element.innerHTML = htmlInsert;