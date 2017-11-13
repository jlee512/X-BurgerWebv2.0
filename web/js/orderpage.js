
function showCheese () {

	document.getElementById("cheeseCol").style.display = "inline-block";
	document.getElementById("beefCol").style.display = "none";
	document.getElementById("saladCol").style.display = "none";
	document.getElementById("bunCol").style.display = "none";
	document.getElementById("sauceCol").style.display = "none";

    document.getElementById("cheeseCol").scrollTop = 0;
}


function showBeef () {

	document.getElementById("beefCol").style.display = "inline-block";
	document.getElementById("cheeseCol").style.display = "none";
	document.getElementById("saladCol").style.display = "none";
	document.getElementById("bunCol").style.display = "none";
	document.getElementById("sauceCol").style.display = "none";

    document.getElementById("beefCol").scrollTop = 0;
}

function showSalad () {

	document.getElementById("saladCol").style.display = "inline-block";
	document.getElementById("cheeseCol").style.display = "none";
	document.getElementById("beefCol").style.display = "none";
	document.getElementById("bunCol").style.display = "none";
	document.getElementById("sauceCol").style.display = "none";

    document.getElementById("saladCol").scrollTop = 0;
}

function showBun () {

	document.getElementById("bunCol").style.display = "inline-block";
	document.getElementById("cheeseCol").style.display = "none";
	document.getElementById("beefCol").style.display = "none";
	document.getElementById("saladCol").style.display = "none";
	document.getElementById("sauceCol").style.display = "none";

    document.getElementById("bunCol").scrollTop = 0;
}

function showSauce () {

	document.getElementById("sauceCol").style.display = "inline-block";
	document.getElementById("cheeseCol").style.display = "none";
	document.getElementById("beefCol").style.display = "none";
	document.getElementById("saladCol").style.display = "none";
	document.getElementById("bunCol").style.display = "none";

    document.getElementById("sauceCol").scrollTop = 0;
}

function showSides() {
    document.getElementById("sideCol").style.display = "inline-block";
    document.getElementById("drinksCol").style.display = "none";
    document.getElementById("specialCol").style.display = "none";

    document.getElementById("add-side").style.display = "block";
    document.getElementById("add-drink").style.display = "none";
    document.getElementById("add-special").style.display = "none";

    document.getElementById("sideCol").scrollTop = 0;
}

function showDrinks() {
    document.getElementById("sideCol").style.display = "none";
    document.getElementById("drinksCol").style.display = "inline-block";
    document.getElementById("specialCol").style.display = "none";

    document.getElementById("add-side").style.display = "none";
    document.getElementById("add-drink").style.display = "block";
    document.getElementById("add-special").style.display = "none";

    document.getElementById("drinksCol").scrollTop = 0;
}

function showSpecial() {
    document.getElementById("sideCol").style.display = "none";
    document.getElementById("drinksCol").style.display = "none";
    document.getElementById("specialCol").style.display = "inline-block";

    document.getElementById("add-side").style.display = "none";
    document.getElementById("add-drink").style.display = "none";
    document.getElementById("add-special").style.display = "block";

    document.getElementById("specialCol").scrollTop = 0;
}

