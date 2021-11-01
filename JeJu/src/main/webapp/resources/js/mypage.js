const myWrite = document.getElementById('list-mywrite-list');
const myCourse = document.getElementById('list-course-list');

const $myWrite_pagination = $('#myWrite-pagination');
const $myCourse_pagination = $('#myCourse-pagination');

const myWriteTableBody = document.getElementById('myWriteTable');
const myCourseTableBody = document.getElementById('myCourseTable');

const myWriteVariable = {
    recordPerPage: 6,
    totalRecords: 0,
    records: [],
    displayRecords: [],
    page: 1,
    totalPages: 0,

}
const myCourseVariable = {
    recordPerPage: 3,
    totalRecords: 0,
    records: [],
    displayRecords: [],
    page: 1,
    totalPages: 0,

}

window.onload = () => {myWrite.click();};
var courses = [];
myCourse.addEventListener('click', () => {
    makeRequest('GET', 'getMyRoute').then(responses => {
        myCourseVariable.records = JSON.parse(responses);
        
		var coursesObj = {};
        let prevId = myCourseVariable.records[0].id;
        coursesObj[prevId] = [myCourseVariable.records[0]];
        
        for(let i = 1; i < myCourseVariable.records.length ; i++) {
            if(prevId !== myCourseVariable.records[i].id) {
                prevId = myCourseVariable.records[i].id
                coursesObj[prevId] = [myCourseVariable.records[i]]
            } else {
            	coursesObj[prevId].push(myCourseVariable.records[i]);
            }
        }

        courses = Object.values(coursesObj);
        myCourseVariable.totalRecords = Object.keys(coursesObj).length;
        myCourseVariable.totalPages = Math.ceil(myCourseVariable.totalRecords/myCourseVariable.recordPerPage);

        applyMyCoursePagination();
    }).catch((error) => {
        console.error(error);
    });
});
myWrite.addEventListener('click', () => {
    promises = [makeRequest('GET', 'getMyFamousRestaurantWrite'), makeRequest('GET', 'getMyTouristSpotWrite')];

    /* process after sucess request-response   */
    Promise.all(promises).then(responses => {
        let JSONString = "";
        responses.forEach((response)=> {
                JSONString += response.trim();
        });
        JSONString = JSONString.replace('\]\[', ', ');
        
        myWriteVariable.records = JSON.parse(JSONString);
        myWriteVariable.totalRecords = myWriteVariable.records.length;
        myWriteVariable.totalPages = Math.ceil(myWriteVariable.totalRecords/myWriteVariable.recordPerPage);
        applyMyWritePagination();
        
    }).catch((error) => {
        console.error(error);
    });
});


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

const generateMyWriteTable = () => {
    myWriteTableBody.innerHTML = "";

    for(let i = 0; i < displayRecords.length; i++) {
        addRecord(displayRecords[i]);
    }
}


const addRecord = (record) => {
    const tr = document.createElement('tr');
    if(record.tourist_spot_id != null) {
    	addURLMappingEvent(tr, record.tourist_spot_id, true);
            //detailUrl = 'data-url', `/listFamous?tourist_spot_id=${record.tourist_spot_id }`;
    } else {
    	addURLMappingEvent(tr, record.famous_restaurant_id, false);
    } 


    tr.innerHTML += `<td>${record.title }</td>`;
    tr.innerHTML += `<td>${record.nickname }</td>`;
    tr.innerHTML += `<td>${record.registration_time }</td>`;
    myWriteTableBody.appendChild(tr);
}



const applyMyWritePagination = ()=> {
    $myWrite_pagination.twbsPagination({
        totalPages: myWriteVariable.totalPages,
        visiblePages: 6,
        prev: "<<",
        next: ">>",
        first: '',
        last: '',
        onPageClick: function(e, page) {
            let displayRecordsIndex = Math.max(page -1, 0) * myWriteVariable.recordPerPage;
            let endRecord = (displayRecordsIndex) + myWriteVariable.recordPerPage;

            displayRecords = myWriteVariable.records.slice(displayRecordsIndex, endRecord);
            generateMyWriteTable();
        }
    });
}

const generateCourseTable = () => {
    myCourseTableBody.innerHTML = "";

    for(let i = 0; i < displayRecords.length; i++) {
        addCourseRecord(displayRecords[i]);
    }
}

const addCourseRecord = (course) => {
    const tr = document.createElement('tr');
    const td1 = document.createElement('td');
    const td2 = document.createElement('td');
 
    const row = document.createElement('div');
    row.classList.add('row');
    row.classList.add('row-cols-auto');

    for(let i = 0; i < course.length ; i++) {
    	let div1 = document.createElement('div');
        let div2 = document.createElement('div');
        let img = document.createElement('img');

        div1.classList.add('col');
        div2.classList.add('course-img');
        div2.classList.add('m-auto');

		img.src = `${course[i].image.replace("..", ".")}`;
        div2.appendChild(img);
        div1.appendChild(div2);
        div1.innerHTML += `<p class="text-center">${course[i].title}</p>`

        let div3 = document.createElement('div');
        let icon = document.createElement('i');

        div3.classList.add('col');
        icon.classList.add('arrow');
        icon.classList.add('fa');
        icon.classList.add('fa-chevron-right');
        icon.classList.add('fa-lg');

        div3.appendChild(icon);

        row.appendChild(div1);
    	row.appendChild(div3);
    }

	td1.innerText = `${course[0].id}`;
	row.lastElementChild.remove();
	td2.appendChild(row);
	
	tr.appendChild(td1);
	tr.appendChild(td2);
    myCourseTableBody.appendChild(tr);
}
const applyMyCoursePagination = ()=> {
    $myCourse_pagination.twbsPagination({
        totalPages: myCourseVariable.totalPages,
        visiblePages: 6,
        prev: "<<",
        next: ">>",
        first: '',
        last: '',
        onPageClick: function(e, page) {
            let displayRecordsIndex = Math.max(page -1, 0) * myCourseVariable.recordPerPage;
            let endRecord = (displayRecordsIndex) + myCourseVariable.recordPerPage;

            displayRecords = courses.slice(displayRecordsIndex, endRecord);
            generateCourseTable();
        }
    });
}

const addURLMappingEvent = (ele, id, isTourist)=>{
	ele.onclick = () => {
        let detailUrl = "";
        if(isTourist) {
            detailUrl = `../board/listById?tourist_spot_id=${id}`;
        } else {
            detailUrl = `../board/listFamous?famous_restaurant_id=${id}`;
        }
        window.location = detailUrl;
    }
}