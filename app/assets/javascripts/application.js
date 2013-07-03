// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery-1.8.3.min
//= require jquery-ui-1.10.3.custom.min.js
//= require jquery.ui.touch-punch.min.js
//= require bootstrap.min
//= require bootstrap-select
//= require bootstrap-switch
//= require flatui-checkbox
//= require flatui-radio
//= require jquery.tagsinput
//= require jquery.placeholder
//= require jquery.stacktable

//= require_tree .

$(".group-add").click(function() {
  
	$('.group-add').hide(1);
  $('.group-add-form').slideDown(80);
	$('.group-add-form').find('#tag_group_name').val('').focus();

});