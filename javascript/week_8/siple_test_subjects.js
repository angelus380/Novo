function max(a,b) {
	if(a<b) {
		return b;
	} else {
		return a;
	}
};

function min(a,b,c) {
	if(a<b && a<c) {
		return a;
	} else if (b<c){
		return b;
	} else {
		return c;
	}
};

function isVowel(string) {
	str = string.toLowerCase();
	return "aeiou".indexOf(str) != -1;
	}
};

function convertToCelsius(temperature) {
	celsius = (temperature-32)/1.8;
	return celsius;
};

function convertToFarenheit(temperature) {
	farenheit = temperature *1.8 +32;
	return farenheit;
};