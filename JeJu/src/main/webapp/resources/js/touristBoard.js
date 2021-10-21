const cardBody = document.getElementById('card-body');
const pagination = document.getElementById('pagination');

makeRequest();

var xhttp;
function makeRequest() {
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = setVariable;

    xhttp.open('GET', '/jeju/board/tourist', true);
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

const generateCard = () => {
    tableBody.innerHTML = "";

    for(let i = 0; i < displayRecords.length; i++) {
        addRecord(displayRecords[i]);
    }
}
const addRecord = (record) => {
    const div = document.createElement('div');
    div.innerHTML += `<td>${record.image }</td>`;
    div.innerHTML += `<td>${record.name }</td>`;
    div.innerHTML += `<td>${record.description }</td>`;
    cardBody.appendChild(div);
}



const applyPagination = ()=> {
    $pagination.twbsPagination({
        totalPages: totalPages,
        visiblePages: 5,
        startPage: 1,
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