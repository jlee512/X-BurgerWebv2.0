var priceHash = {

    "1": 1.0,
    "11": 1.5,
    "21": 2.5,
    "31": 4.0,
    "41": 0.4,
    "51": 1.0,
    "61": 0.2,
    "71": 0.4,
    "81": 0.5,
    "91": 0.2,
    "101": 0.5,
    "111": 0.6,
    "121": 0.4,
    "131": 2.0,
    "141": 3.0,
    "151": 1.5,
    "161": 1.5,
    "171": 2.5,
    "181": 4.0,
    "191": 1.0,
    "201": 1.0,
    "211": 1.0,
    "221": 1.5,
    "231": 2.0,
    "241": 0.1,
    "251": 0.2,
    "261": 0.1,
    "271": 0.1,
    "281": 0.4,
    "291": 0.3,
    "301": 0.3,
    "311": 0.1,
    "321": 2.5,
    "331": 4.0,
    "341": 3.5,
    "351": 3.5,
    "361": 1.5,
    "371": 2.0,
    "381": 3.0,
    "391": 4.0,
    "401": 1.5,
    "411": 1.5,
    "421": 1.5,
    "431": 2.0,
    "441": 2.5,
    "451": 4.0,
    "461": 5.0,
    "471": 4.0,
    "481": 10.0,
    "491": 1.0
}

function showCheese() {

    document.getElementById("cheeseCol").style.display = "inline-block";
    document.getElementById("beefCol").style.display = "none";
    document.getElementById("saladCol").style.display = "none";
    document.getElementById("bunCol").style.display = "none";
    document.getElementById("sauceCol").style.display = "none";

    document.getElementById("cheeseCol").scrollTop = 0;
}


function showBeef() {

    document.getElementById("beefCol").style.display = "inline-block";
    document.getElementById("cheeseCol").style.display = "none";
    document.getElementById("saladCol").style.display = "none";
    document.getElementById("bunCol").style.display = "none";
    document.getElementById("sauceCol").style.display = "none";

    document.getElementById("beefCol").scrollTop = 0;
}

function showSalad() {

    document.getElementById("saladCol").style.display = "inline-block";
    document.getElementById("cheeseCol").style.display = "none";
    document.getElementById("beefCol").style.display = "none";
    document.getElementById("bunCol").style.display = "none";
    document.getElementById("sauceCol").style.display = "none";

    document.getElementById("saladCol").scrollTop = 0;
}

function showBun() {

    document.getElementById("bunCol").style.display = "inline-block";
    document.getElementById("cheeseCol").style.display = "none";
    document.getElementById("beefCol").style.display = "none";
    document.getElementById("saladCol").style.display = "none";
    document.getElementById("sauceCol").style.display = "none";

    document.getElementById("bunCol").scrollTop = 0;
}

function showSauce() {

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
$('#add-burger').on('click', function () {
    var cost = 0;
    var selected_ingredients = [];
    $('div.burger-container input[type=checkbox]').each(function () {
        if ($(this).is(":checked")) {
            var ingredient_id = $(this).attr('id');
            selected_ingredients.push(ingredient_id);

            cost += priceHash[ingredient_id];

            //Deselect ingredient
            $(this).prop("checked", false);
        }
    });
    $('div.burger-container input[type=radio]').each(function () {
        if ($(this).is(":checked")) {
            var ingredient_id = $(this).attr('id');
            selected_ingredients.push(ingredient_id);

            cost += priceHash[ingredient_id];

            //Deselect ingredient
            $(this).prop("checked", false);
        }
    });

    console.log(Math.round(cost * 100) / 100);

});

//Gets all selected ingredient_id's into a JavaScript Array
$('#add-side').on('click', function () {
    var cost = 0;
    var selected_sides = [];
    $('div.side-container input[type=checkbox]').each(function () {
        if ($(this).is(":checked")) {
            var ingredient_id = $(this).attr('id');
            selected_sides.push(ingredient_id);

            cost += priceHash[ingredient_id];

            //Deselect ingredient
            $(this).prop("checked", false);
        }
    });
    console.log(Math.round(cost * 100) / 100);
});

$('#add-drink').on('click', function () {
    var cost = 0;
    var selected_drinks = [];
    $('div.drinks-container input[type=checkbox]').each(function () {
        if ($(this).is(":checked")) {
            var ingredient_id = $(this).attr('id');
            selected_drinks.push(ingredient_id);

            cost += priceHash[ingredient_id];

            //Deselect ingredient
            $(this).prop("checked", false);
        }
    });
    console.log(Math.round(cost * 100) / 100);
});

$('#add-special').on('click', function () {
    var cost = 0;
    var selected_specials = [];
    $('div.special-container input[type=checkbox]').each(function () {
        if ($(this).is(":checked")) {
            var ingredient_id = $(this).attr('id');
            selected_specials.push(ingredient_id);

            cost += priceHash[ingredient_id];

            //Deselect ingredient
            $(this).prop("checked", false);
        }
    });
    console.log(Math.round(cost * 100) / 100);
});


//---------------------------------Preset burger selection--------------------------------------
$('#plain').on('click', function () {

    $('div input[type=checkbox]').each(function () {
        $(this).prop('checked', false);
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "11") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#hamburger').on('click', function () {

    $('div input[type=checkbox]').each(function () {
        if ($(this).attr('id') == "41" || $(this).attr("id") == "51" || $(this).attr("id") == "91" || $(this).attr('id') == 131 || $(this).attr("id") == "241" || $(this).attr('id') == '261') {
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

$('#cheeseburger').on('click', function () {

    $('div input[type=checkbox]').each(function () {
        if ($(this).attr('id') == "41" || $(this).attr("id") == "51" || $(this).attr("id") == "91" || $(this).attr("id") == "201" || $(this).attr('id') == 131 || $(this).attr("id") == "241" || $(this).attr('id') == '261') {
            $(this).prop('checked', true);
        }
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "1") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#porkburger').on('click', function () {

    $('div input[type=checkbox]').each(function () {
        if ($(this).attr('id') == "41" || $(this).attr("id") == "51" || $(this).attr("id") == "91" || $(this).attr("id") == "201" || $(this).attr('id') == 171 || $(this).attr("id") == "241" || $(this).attr('id') == '261') {
            $(this).prop('checked', true);
        }
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "21") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

$('#chickenburger').on('click', function () {

    $('div input[type=checkbox]').each(function () {
        if ($(this).attr('id') == "41" || $(this).attr("id") == "51" || $(this).attr("id") == "91" || $(this).attr("id") == "201" || $(this).attr('id') == 141 || $(this).attr("id") == "241" || $(this).attr('id') == '261') {
            $(this).prop('checked', true);
        }
    });
    $('div input[type=radio]').each(function () {
        if ($(this).attr("id") == "31") {
            $(this).prop('checked', true);
        } else {
            $(this).prop('checked', false);
        }
    });
});

