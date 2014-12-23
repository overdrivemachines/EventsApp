// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
// require jquery require jquery_ujs require turbolinks require_tree .
//= require jquery-2.1.3.min

$(document).ready(function(){
    $("#events-nav a").click(function(e){
        if (!$(this).hasClass("current")) {
            var tabNum = $(this).index();
            var nthChild = tabNum+1;
            $("#events-nav a.current").removeClass("current");
            $(this).addClass("current");
            $("#main section.active").removeClass("active");
            $("#main section:nth-child("+nthChild+")").addClass("active");
        }
    });
});