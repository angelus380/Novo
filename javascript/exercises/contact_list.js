var friends = {};
friends.bill = {
    firstName: "Bill",
    lastName: "Gates",
    number: "01234",
    address: ['Microsoft'],
};
friends.steve = {
    firstName: "Steve",
    lastName: "Jobs",
    number: "98765",
    address: ['Apple'],
};

var list = function(obj) {
    for ( var prop in obj) {
        console.log(prop);
    }
};

var search = function(name) {
    for ( var prop in friends) {
        if (friends[prop].firstName === name) {
            console.log(friends[prop]);
            return friends[prop];
        }
    }
};
list(friends);
search("Steve");