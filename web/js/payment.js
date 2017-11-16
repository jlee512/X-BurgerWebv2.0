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
    + '<label>ENTER YOUR AN ORDER NAME</label>'
    + '<input type="text" class="form-control" id="guestname" name="guestname" placeholder="Order Name" required />'
    + '</div>'
    + '</div>';

$(document).ready(function (){

    $('.use-saved').on('change', function () {

        //If not checked previously
        if ($('#remember').prop('checked')) {
            console.log("remember");
            $('#pin-template-saved').remove();
            if ($('#order-name-append').length > 0) {
                $('#guestname-template').remove();
            }
            $('#cardDetails').show();
            $('#cardDetails2').show();
            $('#pin-append').append(pin_input_template);
        } else if ($('#saved').prop('checked')) {
            console.log("use saved");
            $('#pin-template-new').remove();
            if ($('#order-name-append').length > 0) {
                $('#guestname-template').remove();
            }
            $('#cardDetails').hide();
            $('#cardDetails2').hide();
            $('#pin-append').append(pin_check_template);
        } else {
            console.log("guest");
            $('#pin-template-saved').remove();
            $('#pin-template-new').remove();
            $('#cardDetails').show();
            $('#cardDetails2').show();

            if ($('#order-name-append').length > 0) {
                $('#order-name-append').append(order_name_template);
            }

        }

    });

});
