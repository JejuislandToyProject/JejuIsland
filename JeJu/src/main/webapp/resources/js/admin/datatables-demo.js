// Call the dataTables jQuery plugin
$(document).ready(function() {
  //$('#dataTable').DataTable().destroy();
  $('#dataTable').DataTable( {
        "ajax": {url:"/jeju/admin/getUserData", dataSrc:""},
        "columns": [
        	{ "data": "nickname" },
            { "data": "user_id" },
            { "data": function(){return '<label class="switch" style="margin-top: 5px;"><input type="checkbox"><span class="slider round"></span></label><p style="display:none;"></p>';}}
        ]
    } );
});
