function setaccesscontrol(userid, features, actionid, buttonid)
{
   
    $.ajax({
        type: "POST",
        url: "../Auth/setpermission",
        data: JSON.stringify({
            userid: '' + userid + '', features: '' + features + '', actionid: '' + actionid + ''
        }),
        contentType: "application/json;charset=utf-8",
        success: function (data) {
            
            if(data[0].IsAction==true)
            {
                $("." + buttonid).css('pointer-events', '');
            }
            else {
              
                $("." + buttonid).css('pointer-events', 'none');
            }
           
        },
        error: function (err) {
        }
    });
}
function setaccesscontrolforboth(userid, features, addbtn, viewbtn, deletebtn, e1, e2) {
    $.ajax({
        type: "POST",
        url: "../Auth/setpermission",
        data: JSON.stringify({
            userid: '' + userid + '', features: '' + features + '', addbtn: '' + addbtn + '', viewbtn: '' + viewbtn + '', deletebtn: '' + deletebtn + '',
            e1: '' + e1 + '', e2: '' + e2 + ''
        }),
        contentType: "application/json;charset=utf-8",
        success: function (data) {
            if (addbtn != "") {

                var add = data[0].FormAdd;
                var view = data[0].FormView;
                if (add == false && view == false) {

                   // $("." + addbtn).css('display', 'none');
                    $("." + addbtn).css('pointer-events', 'none');
                    $("." + e1).css('pointer-events', 'none');
                   
                }
                else {
                    // $("." + addbtn).css('display', 'block');
                    if (view == true) {
                        $("." + e1).css('pointer-events', '');
                    }
                    else {
                        $("." + e1).css('pointer-events', 'none');
                    }
                   
                }

            }
       
            if (deletebtn != "") {
                var del = data[0].FormDelete;

                if (del == false) {

                    // $("#" + deletebtn).css('display', 'none');
                    $("#" + deletebtn).css('pointer-events', 'none');

                }
                else {
                    //$("#" + deletebtn).css('display', 'block');
                    $("#" + deletebtn).css('pointer-events', '');
                }
            }

        },
        error: function (err) {
        }
    });
}