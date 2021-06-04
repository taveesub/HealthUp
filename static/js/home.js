
$(document).ready( function () {
    $('#Patient_ID').keypress(function () {
        $.ajax({
            url:  'PersonList',
            type:  'get',
            dataType:  'json',
            success: function  (data) {
                var name = [];
                data.persons.forEach(person => {
                    name.push(person.name);
                });
                $( "#Patient_ID" ).autocomplete({
                    source: name,
                    maxShowItems: 5,
                    delay: 100
                });
            },
        });        
    });
    
    $('#Search').click(function () {
            location.href = "/Recommand"+ "/" + $('#Patient_ID').val();

        });
});
