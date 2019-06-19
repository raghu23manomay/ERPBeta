
$(function () {
    $('.OnlyNumeric').keydown(function (e) {
        if (e.shiftKey || e.ctrlKey || e.altKey) {
            e.preventDefault();
        } else {
            var key = e.keyCode;
            if (!((key == 8) || (key == 46) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                e.preventDefault();
            }
        }
    });
});

$(function () {
    $('.TaxNumeric').keydown(function (e) {
        if (e.shiftKey || e.ctrlKey || e.altKey) {
            e.preventDefault();
        } else {
            var key = e.keyCode;
            if (!((key == 8) || (key == 46)||(key==190) || (key >= 35 && key <= 40) || (key >= 48 && key <= 57) || (key >= 96 && key <= 105))) {
                e.preventDefault();
            }
        }
    });
});


$(function () {
    $('.OnlyAlphabet').keydown(function (e) {
        var key = e.keyCode;
        if (key != 9) {
            if (e.ctrlKey || e.altKey) {
                e.preventDefault();
            } else {

                if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                    e.preventDefault();
                }
            }
        }


    });
});



$(function() {
    $('.OnlyDecimal').keyup(function() {
        if ($(this).val().indexOf('.') != -1) {
            if ($(this).val().split(".")[1].length > 2) {
                if (isNaN(parseFloat(this.value))) return;
                this.value = parseFloat(this.value).toFixed(2);
            }
        }
        return this; //for chaining
    });

});

$(function () {
    $('.TaxDecimal').keyup(function () {
        if ($(this).val().indexOf('.') != -1) {
            if ($(this).val().split(".")[1].length > 2) {
                if (isNaN(parseFloat(this.value))) return;
                this.value = parseFloat(this.value).toFixed(2);
                var key = e.keyCode;
                if (!((key == 8) || (key == 32) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
                    e.preventDefault();
            }
        }
              
            return this; //for chaining
        }

    });

});


$(function () {
    $('.NoSpecialCharecters').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z0-9 ]+$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }

        e.preventDefault();
        return false;
    });
});


$(function () {
    $('.NoStar').keypress(function (e) {
        var regex = new RegExp("^[a-zA-Z0-9.,+=_/!@#$%^&(-)? ]+$");
        var str = String.fromCharCode(!e.charCode ? e.which : e.charCode);
        if (regex.test(str)) {
            return true;
        }

        e.preventDefault();
        return false;
    });
});


$(function () {
    $('.number').keypress(function (event) {
        if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }

        var text = $(this).val();

        if ((text.indexOf('.') != -1) && (text.substring(text.indexOf('.')).length > 2)) {
            event.preventDefault();
        }
    });
});

//focus of text box to text box on enter  imp.....
$(function() {
    $('input:text:first').focus();
    var $inp = $('input:text');
    $inp.bind('keydown', function(e) {
        //var key = (e.keyCode ? e.keyCode : e.charCode);
        var key = e.which;
        if (key == 13) {
            e.preventDefault();
            var nxtIdx = $inp.index(this) + 1;
            $(":input:text:eq(" + nxtIdx + ")").focus();
        }
    });
});

