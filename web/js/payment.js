/**
 * Created by julia on 14/11/2017.
 */

var pin_input_template = '<div class="d-flex flex-row justify-content-center" id="pin-template-new">'
    + '<div class="form-group">'
    + '<label for="pin"></label>'
    + '<label>CHOOSE A PIN (4 DIGIT)</label>'
    + '<input type="password" class="form-control" id="pin" name="pin-new" placeholder="PIN" minlength="4" maxlength="4" required />'
    + '</div>'
    + '</div>';

var pin_check_template = '<div class="d-flex flex-row justify-content-center" id="pin-template-saved">'
    + '<div class="form-group">'
    + '<label for="pin"></label>'
    + '<label>ENTER YOUR PIN (4 DIGIT)</label>'
    + '<input type="password" class="form-control" id="pin" name="pin-saved" placeholder="PIN" minlength="4" maxlength="4" required />'
    + '</div>'
    + '</div>';

var order_name_template = '<div class="d-flex flex-row justify-content-center" id="guestname-template">'
    + '<div class="form-group">'
    + '<label for="guestname"></label>'
    + '<label>ENTER AN ORDER NAME</label>'
    + '<input type="text" class="form-control" id="guestname" name="guestname" placeholder="Order Name" required />'
    + '</div>'
    + '</div>';

var cardDetails_template = '<div class="form-group" id="cardDetails">'
                            + '<label for="cardNumber">CARD NUMBER</label><div class="input-group">'
                            +   '<input type="text" class="form-control" id="cardNumber" name="cardNum" placeholder="Valid Card Number" required autofocus/>'
                            +       '<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>'
                            +       '</div></div><div class="d-flex flex-column justify-content-center" id="cardDetails2">'
                            +       '<div class="d-flex flex-row justify-content-center"><div class="form-group">'
                            +       '<label for="expityMonth">EXPIRY DATE</label><div class="d-flex">'
                            +       '<input type="text" class="form-control" id="expityMonth" name="expiryMon" placeholder="MM" minlength="2" maxlength="2" required/></div>'
                            +       '<div class="d-flex"><input type="text" class="form-control" id="expityYear" name="expiryYear" placeholder="YYYY" minlength="4" maxlength="4" required/></div>'
                            +       '</div></div><div class="d-flex flex-row justify-content-center">'
                            +       '<div class="form-group"><label for="cvCode">CCV</label>'
                            +       '<input type="password" class="form-control" id="cvCode" name="ccv" placeholder="CCV" required/>'
                            +       '</div></div></div>';

$(document).ready(function (){

    $('.use-saved').on('change', function () {

        //If not checked previously
        if ($('#remember').prop('checked')) {
            console.log("remember");
            console.log($('#new-card-entry').children().length);
            if($('#new-card-entry').children().length === 0) {
                $('#new-card-entry').append(cardDetails_template);
            }
            $('#pin-template-saved').remove();
            if ($('#order-name-append').length > 0) {
                $('#guestname-template').remove();
            }
            $('#pin-append').append(pin_input_template);
        } else if ($('#saved').prop('checked')) {
            console.log("use saved");
            console.log($('#new-card-entry').children().length);
            if($('#new-card-entry').children().length > 0) {
                $('#new-card-entry').empty();
            }
            $('#pin-template-new').remove();
            if ($('#order-name-append').length > 0) {
                $('#guestname-template').remove();
            }
            $('#pin-append').append(pin_check_template);
        } else {
            console.log("guest");
            console.log($('#new-card-entry').children().length);
            if($('#new-card-entry').children().length === 0) {
                $('#new-card-entry').append(cardDetails_template);
            }
            $('#pin-template-saved').remove();
            $('#pin-template-new').remove();

            if ($('#order-name-append').length > 0) {
                $('#order-name-append').append(order_name_template);
            }

        }

    });

});
