var user = prompt("You have three choices: attack, defend or run! Chose one!").toUpperCase();

switch(user) {
    case 'ATTACK':
        var attackValue = Math.floor(Math.random() *2);
        if (attackValue) {
            console.log("You attacked your opponent!");
        }
        else {
            console.log("Your attack missed the opponent!");
        }
        break;
        
    case 'DEFEND':
        var powerValue = Math.floor(Math.random() *2);
        var defenceValue = Math.floor(Math.random() *2);
        if (powerValue && defenceValue) {
            console.log("You defended yourself!");
        }
        else {
            console.log("You lost your defence!");
        }
        break;
    
    case 'RUN':
        var speedValue = Math.floor(Math.random() *2);
        var luckValue = Math.floor(Math.random() *2);
        if (speedValue || luckValue) {
            console.log("You ran away!");
        }
        else {
            console.log("You where caught!");
        }
        break;
    default:
        console.log("You can only choose between attack, defend or run! Please restart the program.");
}