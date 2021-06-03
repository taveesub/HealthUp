$(document).ready( function () {
    $('#Patient_ID').keypress(function () {
        $.ajax({
            url:  'PersonList',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                
            },
        });        
    });
});
