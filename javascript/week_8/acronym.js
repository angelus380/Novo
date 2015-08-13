//'Hello codewarrior' -> 'HC'
//'a42' -> 'Not letters'
//42 -> 'Not a string'
//[2,12] -> 'Not a string'
//{name: 'Abraham'} -> 'Not a string'

var make_acronym = function(value){

	if (typeof value !== typeof "string") {
		return "Not a string";
	}
	else if ( value.search(/[A-Za-z0-9]/)!= value.length ) {
		return "Not letters";
	}
	else {
		var values = value.split(" ");
		return (values[0][0] + values[1][0]).toUpperCase();
	};
};

console.log(make_acronym("hello codewarrior"));
console.log(make_acronym("chico esperto"));
console.log(make_acronym("a42"));
console.log(make_acronym(42));
console.log(make_acronym([2,2,"dude"]));
console.log(make_acronym({name: 'Abraham'}));