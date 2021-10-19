const $pagination = $('#pagination');
const tableBody = document.getElementById('myWriteTable');

const recordPerPage = 6;
let totalRecords = 0;
let records = [];
let displayRecords = [];
let page = 1;
let totalPages = 0;

makeRequest();


var xhttp;
function makeRequest() {
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = setVariable;

    xhttp.open('GET', 'getMyWrite', true);
    xhttp.send();
}

function setVariable() {
    if(xhttp.readyState === XMLHttpRequest.DONE) {
        if(xhttp.status === 200) {
            console.dir(xhttp);
            records = JSON.parse(xhttp.responseText);
            console.log(records);
            totalRecords = records.length;
            totalPages = Math.ceil(totalRecords/recordPerPage);
            
            applyPagination();
        }
    }
}
const generateTable = () => {
    tableBody.innerHTML = "";

    for(let i = 0; i < displayRecords.length; i++) {
        addRecord(displayRecords[i]);
    }
}
const addRecord = (record) => {
    const tr = document.createElement('tr');
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