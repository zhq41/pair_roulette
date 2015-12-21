// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

var members;
var new_position;
function change_member(value, position){
  // $("tr.success").removeClass("success").addClass("danger");
  //$("select").val(1);
  var new_value = document.getElementById(position).value;
  set_member_position(new_value);
  document.getElementById(new_position).value = value;
  var counter = 0;
  members.forEach(function(member){
    if(member[0] == position){
      members[counter][1] = new_value;
      //alert(members[2][1]);
  }
    if(member[0] == new_position){
      //alert(members[counter][1]);
      members[counter][1] = value;
     // alert(members[counter][1]);
    }
    counter=counter+1;
  });
}

function set_member_position(new_value){
  members.forEach(function(member){
    if(new_value == member[1]) new_position = member[0];
  });
}


$(document).ready(function(){
  members = $("#data-member").data('member');
})

