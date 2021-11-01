// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable().destroy();
  
  $('#dataTable').DataTable( {
        "ajax": {url:"/jeju/admin/getUserData", dataSrc:""},
        "columns": [
        	{ "data": "nickname" },
            { "data": "user_id" },
            { "data":   "banned"}
        ], 'columnDefs': [
         {
            'targets': 2,
            'render': function ( data, row ) {
	                    if ( data === 1 ) {
	                        return `<label class="switch" style="margin-top: 5px;"><input type="checkbox" class="checkbox" checked><span class="slider round"></span></label>`;
	                    } else {
	                    	return `<label class="switch" style="margin-top: 5px;"><input type="checkbox" class="checkbox"><span class="slider round"></span></label>`;
	                    }
	                    
                  	}
         }
      ],
      "fnDrawCallback": function() {
                $(".checkbox").click(function (e) {
                	let checkbox = e.target;
                	let id = e.target.parentNode.parentNode.previousSibling.innerText;
                	banned = checkbox.checked? 1: 0;
                	console.log(checkbox.checked);
                    	$.ajax({
							url: '/jeju/admin/user_ban', 
							dataType: 'application/json',
							contentType: 'application/json',
							type: 'post',
							data: JSON.stringify ({
								"user_id": id, 
								"banned": banned 
							}),
							success: function() {
							      console.log('Success');
							}
						})
				                    
                });
            }
        
    } );
});

