    var count = 0;
    $(function () {
        $('a#container_add_2').click(function () {
            count += 1;
            $('#container_work').append(
			'<div id="' + count + '">' +
                '<hr style="margin-top: 10px;">' +
				'<a id="wrem" class="btn btn-danger pull-right">Remove</a>' +
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Address'
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-pencil">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + count + '" class="form-control" name="unkonown_value[]' + '" type="text" />'
				   + '</div>'
				+ '</div>'
			+ '</div>'

			+ '<div class="form-group" >' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'City'
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-pencil">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + count + '" class="form-control" name="unkonown_value[]' + '" type="text" />'
				   + '</div>'
				+ '</div>'
			+ '</div>'

            + '<div class="form-group">' +
                '<label class="col-md-3 col-xs-12 control-label">' + 
                    'State' 
                + '</label>'
                + '<div class="col-md-6 col-xs-12">' +
                    '<select id="field_' + count + '"  name="unkonown_value[]' + '" class="form-control select">'
                        + '<option value="">' + 'Select..' + '</option>'
                        + '<option value="Assam">' + 'Assam' + '</option>'
                    + '</select>'
                + '</div>'
            + '</div>'

            + '<div class="form-group">' +
                '<label class="col-md-3 col-xs-12 control-label">' +
                    'State'
                + '</label>'
                + '<div class="col-md-6 col-xs-12">' +
                    '<select id="field_' + count + '"  name="unkonown_value[]' + '" class="form-control select">'
                        + '<option value="">' + 'Select..' + '</option>'
                        + '<option value="Assam">' + 'India' + '</option>'
                    + '</select>'
                + '</div>'
            + '</div>'

            + '<div class="form-group" >' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Zip/Postal Code'
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-pencil">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + count + '" class="form-control" name="unkonown_value[]' + '" type="text" />'
				   + '</div>'
				+ '</div>'
			+ '</div>'
			
			+'</div>'

             );

        });
		$('#container_work').on("click","a#wrem", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });
	