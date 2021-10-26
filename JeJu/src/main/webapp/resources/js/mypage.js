const $pagination = $('#pagination');
const tableBody = document.getElementById('myWriteTable');

const recordPerPage = 6;
let totalRecords = 0;
let records = [];
let displayRecords = [];
let page = 1;
let totalPages = 0;


const makeRequest = (method, url) => {
	return new Promise(function (resolve, reject) {
	    let xhttp = new XMLHttpRequest();
	    xhttp.onload = function () {
	        if (this.status >= 200 && this.status < 300) {
	          resolve(xhttp.response);
	        } else {
	          reject({
	            status: this.status,
	            statusText: xhttp.statusText
	          });
	        }
	      };
	
	    xhttp.open(method, url, true);
	    xhttp.send();
	})
};


promises = [makeRequest('GET', 'getMyFamousRestaurantWrite'), makeRequest('GET', 'getMyTouristSpotWrite')];

/* process after sucess request-response   */
Promise.all(promises).then(responses => {
    let JSONString = "";
    responses.forEach((response)=> {
            JSONString += response.trim();
    });
	JSONString = JSONString.replace('\]\[', ', ');
	
    records = JSON.parse(JSONString);
    totalRecords = records.length;
    totalPages = Math.ceil(totalRecords/recordPerPage);
    applyPagination();
    
}).catch((error) => {
    console.error(error);
});


const generateTable = () => {
    tableBody.innerHTML = "";

    for(let i = 0; i < displayRecords.length; i++) {
        addRecord(displayRecords[i]);
    }
}
const addRecord = (record) => {
    const tr = document.createElement('tr');
    tr.onclick = () => {
        let detailUrl = "";
        if(record.tourist_spot_id !== null) {
            detailUrl = `/listById?tourist_spot_id=${record.tourist_spot_id}`;
        } else {
            detailUrl = `/listFamous?famous_restaurant_id=${record.famous_restaurant_id}`;
        }
        window.location = detailUrl;
    }
    tr.innerHTML += `<td>${record.title }</td>`;
    tr.innerHTML += `<td>${record.nickname }</td>`;
    tr.innerHTML += `<td>${record.registration_time }</td>`;
    tableBody.appendChild(tr);
}



const applyPagination = ()=> {
    $pagination.twbsPagination({
        totalPages: totalPages,
        visiblePages: 6,
        prev: "<<",
        next: ">>",
        first: '',
        last: '',
        onPageClick: function(e, page) {
            let displayRecordsIndex = Math.max(page -1, 0) * recordPerPage;
            let endRecord = (displayRecordsIndex) + recordPerPage;

            displayRecords = records.slice(displayRecordsIndex, endRecord);
            generateTable();
        }
    });
}