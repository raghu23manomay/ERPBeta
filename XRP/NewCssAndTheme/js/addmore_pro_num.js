    var counter = 0;
    $(function () {
        $('a#pro_num_1').click(function () {
            counter += 1;
            $('#pro_num').append(
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Professional Number' + counter
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-phone">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + counter + '" class="form-control" name="pronum[]' + '" type="text" placeholder="Professional Number"/>'
				   + '</div>'
				+ '</div>'
						+ '<a id="pron" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
				+ '</div>'
             );

        });
		$('#pro_num').on("click","a#pron", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });
	
	var cnt = 0;
    $(function () {
        $('a#pers_num_1').click(function () {
            cnt += 1;
            $('#per_num').append(
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Personal Number' + cnt
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-phone">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + cnt + '" class="form-control" name="pernum[]' + '" type="text" placeholder="Personal Number"/>'
				   + '</div>'
				+ '</div>'
					+ '<a id="persn" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
			+ '</div>'

             );

        });
		$('#per_num').on("click","a#persn", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });
	
	var cntmail = 0;
    $(function () {
        $('a#pry_email_1').click(function () {
            cntmail += 1;
            $('#pry_email').append(
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Primary Email' + cntmail
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-envelope">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + cntmail + '" class="form-control" name="prymail[]' + '" type="text" placeholder="Primary Email"/>'
				   + '</div>'
				+ '</div>'
					+ '<a id="pemail" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
			+ '</div>'

             );

        });
		$('#pry_email').on("click","a#pemail", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
		
    });
	
	var cntsmail = 0;
    $(function () {
        $('a#sec_email_1').click(function () {
            cntsmail += 1;
            $('#sec_email').append(
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Secondary Email' + cntsmail
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-envelope">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + cntsmail + '" class="form-control" name="secmail[]' + '" type="text" placeholder="Secondary Email"/>'
				   + '</div>'
				+ '</div>'
					+ '<a id="semail" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
			+ '</div>'

             );

        });
		$('#sec_email').on("click","a#semail", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });

	var vis = 0;
    $(function () {
        $('a#visaadd').click(function () {
            vis += 1;
            $('#visadocs').append(
            '<div class="form-group">' +
				'<div class="row">' +
					'<label class="col-md-3 col-xs-12 control-label">' +
					   'Visa Copy' + vis
					+ '</label>'

					+ '<div class="col-md-6 col-xs-12">' +
					   '<div class="input-group">' +
						   '<span class="input-group-addon">' +
							   '<span class="fa fa-caret-right">' + '</span>'
						   + '</span>' +
						   '<input id="field_' + vis + '" class="form-control" name="visano[]' + '" type="text" placeholder="Visa Copy"/>'
					   + '</div>'
					+ '</div>'
					+ '<div class="col-md-3">'
						+ '<a class="file-input-wrapper btn btn-default  fileinput">'
						+ '<span>' + 'Browse' + '</span>'
						+ '<input type="file" class="fileinput" name="visa' + vis + '" id="visa' + vis + '" />'
						+ '</a>'
					+ '</div>'
				+ '</div>'
					+ '<a id="visa" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
			+ '</div>'

             );

        });
		
		$('#visadocs').on("click","a#visa", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });
	
	var vendor_number = 0;
    $(function () {
        $('a#vend_num_1').click(function () {
            vendor_number += 1;
            $('#vend_num').append(
            '<div class="form-group">' +
				'<label class="col-md-3 col-xs-12 control-label">' +
				   'Contact Number' + vendor_number
				+ '</label>'

				+ '<div class="col-md-6 col-xs-12">' +
				   '<div class="input-group">' +
					   '<span class="input-group-addon">' +
						   '<span class="fa fa-phone">' + '</span>'
					   + '</span>' +
					   '<input id="field_' + vendor_number + '" class="form-control" name="vendnum[]' + '" type="text" placeholder="Contact Number"/>'
				   + '</div>'
				+ '</div>'
					+ '<a id="vnd_num" class="btn btn-danger pull-right" style="float: left;">Remove</a>'
			+ '</div>'

             );

        });
		$('#vend_num').on("click","a#vnd_num", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			counter -= 1;
		});
    });
	
	$(function() {

		//jQuery time
		var current_fs, next_fs, previous_fs; //fieldsets
		var left, opacity, scale; //fieldset properties which we will animate
		var animating; //flag to prevent quick multi-click glitches

		$(".next").click(function(){
			if(animating) return false;
			animating = true;
			
			current_fs = $(this).parent();
			next_fs = $(this).parent().next();
			
			//activate next step on progressbar using the index of next_fs
			$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
			
			//show the next fieldset
			next_fs.show(); 
			//hide the current fieldset with style
			current_fs.animate({opacity: 0}, {
				step: function(now, mx) {
					//as the opacity of current_fs reduces to 0 - stored in "now"
					//1. scale current_fs down to 80%
					scale = 1 - (1 - now) * 0.2;
					//2. bring next_fs from the right(50%)
					left = (now * 50)+"%";
					//3. increase opacity of next_fs to 1 as it moves in
					opacity = 1 - now;
					current_fs.css({'transform': 'scale('+scale+')'});
					next_fs.css({'left': left, 'opacity': opacity});
				}, 
				duration: 800, 
				complete: function(){
					current_fs.hide();
					animating = false;
				}, 
				//this comes from the custom easing plugin
				easing: 'easeInOutQuad'
			});
		});

		$(".previous").click(function(){
			if(animating) return false;
			animating = true;
			
			current_fs = $(this).parent();
			previous_fs = $(this).parent().prev();
			
			//de-activate current step on progressbar
			$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
			
			//show the previous fieldset
			previous_fs.show(); 
			//hide the current fieldset with style
			current_fs.animate({opacity: 0}, {
				step: function(now, mx) {
					//as the opacity of current_fs reduces to 0 - stored in "now"
					//1. scale previous_fs from 80% to 100%
					scale = 0.8 + (1 - now) * 0.2;
					//2. take current_fs to the right(50%) - from 0%
					left = ((1-now) * 50)+"%";
					//3. increase opacity of previous_fs to 1 as it moves in
					opacity = 1 - now;
					current_fs.css({'left': left});
					previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
				}, 
				duration: 800, 
				complete: function(){
					current_fs.hide();
					animating = false;
				}, 
				//this comes from the custom easing plugin
				easing: 'easeInOutQuad'
			});
		});

		$(".submit").click(function(){
			return false;
		})

});

var proj_file = 0;
    $(function () {
        $('a#proj_upld_2').click(function () {
            proj_file += 1;
            $('#proj_upld').append(
            '<div class="form-group" id="docfile">' +
				'<hr />'  +
				'<div class="row">' +
					'<label class="col-md-3 col-xs-12 control-label">' +
					   'Upload File'
					+ '</label>'

					+ '<div class="col-md-4 col-xs-12">' +
					   '<div class="input-group">' +
						   '<span class="input-group-addon">' +
							   '<span class="fa fa-upload">' + '</span>'
						   + '</span>' +
						   '<input type="text" id="field_' + proj_file + '" class="form-control" name="pronum[]' + '" placeholder="File description"/>'
					   + '</div>'
					+ '</div>'
					+ '<div class="col-md-3">'
						+ '<a class="file-input-wrapper btn btn-default fileinput">'
						+ '<span>' + 'Browse' + '</span>'
						+ '<input type="file" class="fileinput pull-left" name="filename' + proj_file + '" id="filename_' + proj_file + '" />'
						+ '</a>'
					+ '</div>'
					//+ '<div class="col-md-2">'
						//+ '<a id="proj_remove" class="btn btn-danger pull-right">Remove</a>'
					//+ '</div>'
				+ '</div>'
				+ '<a id="proj_remove" class="btn btn-danger pull-right">Remove</a>'
			+ '</div>'

             );

        });
		
		$('#proj_upld').on("click","a#proj_remove", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			//$("#docfile").remove();
			proj_file -= 1;
		});
    });
	
	var proj_part = 0;
    $(function () {
        $('a#part_det_2').click(function () {
            proj_part += 1;
            $('#part_det').append(
			'<div class="form-group">' +
				'<hr />'  +
				'<div class="row">' +
					'<label class="col-md-3 col-xs-12 control-label">' +
					   'Part Name'
					+ '</label>'

					+ '<div class="col-md-3 col-xs-12">' +
					   '<div class="input-group">' +
						   '<span class="input-group-addon">' +
							   '<span class="fa fa-pencil">' + '</span>'
						   + '</span>' +
						   '<input type="text" id="part_n_' + proj_part + '" class="form-control" name="part_n[]' + '" placeholder="File description"/>'
					   + '</div>'
					+ '</div>'
					+ '<div class="col-md-3 col-xs-12">' +
					   '<div class="input-group">' +
						   '<span class="input-group-addon">' +
							   '<span class="fa fa-pencil">' + '</span>'
						   + '</span>' +
						   '<input type="text" id="part_d_' + proj_part + '" class="form-control" name="part_d[]' + '" placeholder="File description"/>'
					   + '</div>'
					+ '</div>'
					//+ '<div class="col-md-3">'
						//+ '<a id="part_remove" class="btn btn-danger pull-right">Remove</a>'
					//+ '</div>'
				+ '</div>'
				+ '<a id="part_remove" class="btn btn-danger pull-right">Remove</a>'
			+ '</div>'
             );

        });
		
		$('#part_det').on("click","a#part_remove", function (e) {
			e.preventDefault();
			$(this).parent('div').remove();
			//$("#prtn").remove();
			proj_part -= 1;
		});
    });