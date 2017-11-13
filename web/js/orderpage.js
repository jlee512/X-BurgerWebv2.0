
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

//Gets all selected ingredient_id's into a JavaScript Array
$('#add-burger').on('click', function() {
	var selected_ingredients = [];
    $('div.burger-container input[type=checkbox]').each(function() {
        if ($(this).is(":checked")) {
            selected_ingredients.push($(this).attr('id'));
            console.log(selected_ingredients);
        }
    });
    $('div.burger-container input[type=radio]').each(function() {
        if ($(this).is(":checked")) {
            selected_ingredients.push($(this).attr('id'));
            console.log(selected_ingredients);
        }
    });
});

//Gets all selected ingredient_id's into a JavaScript Array
$('#add-side').on('click', function() {
    var selected_sides = [];
    $('div.side-container input[type=checkbox]').each(function() {
        if ($(this).is(":checked")) {
            selected_sides.push([$(this).attr('id')]);
            console.log(selected_sides);
        }
    });
});

$('#add-drink').on('click', function() {
    var selected_drinks = [];
    $('div.drinks-container input[type=checkbox]').each(function() {
        if ($(this).is(":checked")) {
            selected_drinks.push([$(this).attr('id')]);
            console.log(selected_drinks);
        }
    });
});

$('#add-special').on('click', function() {
    var selected_specials = [];
    $('div.special-container input[type=checkbox]').each(function() {
        if ($(this).is(":checked")) {
            selected_specials.push([$(this).attr('id')]);
            console.log(selected_specials);
        }
    });
});


//Preset burger selection
$('#plain').on('click', function(){

        $('div input[type=checkbox]').each(function () {
            $(this).prop('checked', false);
        });
        $('div input[type=radio]').each(function () {
            if ($(this).attr("id") == "1") {
                $(this).prop('checked', true);
            } else {
                $(this).prop('checked', false);
            }
        });
});

$('#hamburger').on('click', function(){

    $('div input[type=checkbox]').each(function () {
        if($(this).attr('id') == "41" || $(this).attr("id") == "51" || $(this).attr("id") == "91" || $(this).attr("id") == "201" || $(this).attr('id') == 131 || $(this).attr("id") == "241" || $(this).attr('id') == '261'){
            $(this).prop('checked', true);
        }
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "11") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#cheeseburger').on('click', function(){

    $('div input[type=checkbox]').each(function () {
        $(this).prop('checked', false);
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "1") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#porkburger').on('click', function(){

    $('div input[type=checkbox]').each(function () {
        $(this).prop('checked', false);
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "1") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#chickenburger').on('click', function(){

    $('div input[type=checkbox]').each(function () {
        $(this).prop('checked', false);
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "1") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

