// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .


document.addEventListener("turbolinks:load", function() {
  tinymce.remove();
  tinymce.init({
    height: '475',
    selector:'textarea#post_body',
    themes: "modern",
    plugins: [
    'advlist autolink lists link image charmap print preview hr anchor pagebreak spellchecker',
    'searchreplace wordcount visualblocks visualchars code fullscreen',
    'insertdatetime media nonbreaking save table contextmenu directionality',
    'emoticons template paste textcolor colorpicker imagetools code codesample toc'
  ],
  toolbar1: 'undo redo | insert | styleselect formatselect fontselect fontsizeselect | ',
  toolbar2: ' bold italic forecolor backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | code codesample | link image media | print preview | emoticons | spellchecker',
  imagetools_cors_hosts: ['www.tinymce.com', 'codepen.io'],
  templates: [
    { title: 'Test template 1', content: 'Test 1' },
    { title: 'Test template 2', content: 'Test 2' }
  ],
  browser_spellcheck: true
      
  });

})