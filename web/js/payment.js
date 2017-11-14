/**
 * Created by julia on 14/11/2017.
 */

var pin_input_template = '<div class="col-xs-5 col-md-5" id="pin-template-new">'
    + '<div class="form-group">'
    + '<label for="pin"></label>'
    + '<label>CHOOSE A PIN (4 DIGIT)</label>'
    + '<input type="password" class="form-control" id="pin" name="pin-new" placeholder="PIN" required />'
    + '</div>'
    + '</div>';

var pin_check_template = '<div class="col-xs-5 col-md-5" id="pin-template-saved">'
    + '<div class="form-group">'
    + '<label for="pin"></label>'
    + '<label>ENTER YOUR PIN (4 DIGIT)</label>'
    + '<input type="password" class="form-control" id="pin" name="pin-saved" placeholder="PIN" required />'
    + '</div>'
    + '</div>';

var order_name_template = '<div class="col-xs-12 col-md-12" id="guestname-template">'
    + '<div class="form-group">'
    + '<label for="guestname"></label>'
    + '<label>ENTER YOUR AN ORDER NAME</label>'
    + '<input type="password" class="form-control" id="guestname" name="guestname" placeholder="Order Name" required />'
    + '</div>'
    + '</div>';

$(document).ready(function (){

    $('.use-saved').on('change', function () {

        //If not checked previously
        if ($('#remember').prop('checked')) {
            $('#pin-template-saved').remove();
            $('#guestname-template').remove();
            $('#cardDetails').show();
            $('#cardDetails2').show();
            $('#pin-append').append(pin_input_template);
        } else if ($('#saved').prop('checked')) {
            $('#pin-template-new').remove();
            $('#guestname-template').remove();
            $('#cardDetails').hide();
            $('#cardDetails2').hide();
            $('#pin-append').append(pin_check_template);
        } else {
            $('#pin-template-saved').remove();
            $('#pin-template-new').remove();
            $('#cardDetails').show();
            $('#cardDetails2').show();
            $('#pin-append').append(order_name_template);

        }

    });

});
