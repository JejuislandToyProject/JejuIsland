const cardBody = document.getElementById('contents-body');
const $pagination = $('#pagination');

const cardPerPage = 8;
let totalcards = 0;
let cards = [];
let displayCards = [];
let page = 1;
let totalPages = 0;

makeRequest();

var xhttp;
function makeRequest() {
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = setVariable;

    xhttp.open('GET', '/jeju/touristBoard', true);
    xhttp.send();
}

function setVariable() {
    if(xhttp.readyState === XMLHttpRequest.DONE) {
        if(xhttp.status === 200) {
            console.dir(xhttp);
            cards = JSON.parse(xhttp.responseText);
            console.log(cards);
            totalcards = cards.length;
            totalPages = Math.ceil(totalcards/cardPerPage);
            
            applyPagination();
            $pagination.twbsPagination("changeTotalPages", totalPages , page);
        }
    }
}


const generateCard = () => {
    cardBody.innerHTML = "";

    for(let i = 0; i < displayCards.length; i++) {
        addCard(displayCards[i]);
    }
}
const addCard = (card) => {
    const cardGroup = document.createElement('div');
    const cardBorder = document.createElement('div');

    cardGroup.classList.add('card-group');
    cardBorder.classList.add('card');
    cardBorder.classList.add('shadow-sm');
    cardBorder.classList.add('rounded-3');

    
    cardBorder.appendChild(addCardHeader(card));
    cardBorder.appendChild(addCardBody(card));
    cardBorder.appendChild(addIconPart(card));

    cardGroup.appendChild(cardBorder); // 그룹 지우면 다 지워짐.

    cardBody.appendChild(cardGroup);
}

const addCardHeader = (card) => {
    const cardHeader = document.createElement('div');
    cardHeader.classList.add('card-header');
    cardHeader.classList.add('p-0');
    cardHeader.classList.add('mx-3');
    cardHeader.classList.add('mt-3'); 
    cardHeader.classList.add('position-relative');
    cardHeader.classList.add('z-index-1');

    cardHeader.innerHTML += `<a href="javascript:;" class="d-block"> 
                            <img src=${card.image } class="img-fluid border-radius-lg" > 
                            </a>`;
    return cardHeader;
}
const addCardBody = (card) => {
    const cardBody = document.createElement('div');
    cardBody.classList.add('card-body');
    cardBody.classList.add('pt-2');

    cardBody.innerHTML += `<a href="/jeju/listById?tourist_spot_id=${card.tourist_spot_id}" 
    class="card-title h5 d-block text-darker text-center mt-3" id="card-title">
                                ${card.name }
                            </a>
                            <p class="card-description text-center mb-4">
                            	<small class="text-break text-muted">
											${card.description}
                            	</small>
                            </p>`;
    return cardBody;
}

const addIconPart = (card) => {
    const outerform = document.createElement('div');
    const innerDiv1 = document.createElement('div');
    const innerDiv2 = document.createElement('div');
	
	outerform.setAttribute('id','likeBtn');
    outerform.classList.add('author');
    outerform.classList.add('align-items-center');
    outerform.classList.add('p-2');

    innerDiv1.classList.add('mt-6');
    innerDiv2.classList.add('mt-2');

    innerDiv1.setAttribute('id', 'icon');

    outerform.innerHTML += `<form id="like_form">`;
	
    innerDiv1.innerHTML += `<input class="align-items-center" type="button" value="좋아요" onclick="like_func(${card.tourist_spot_id})" />`;
    innerDiv1.innerHTML += `<div class="align-items-center" id="like_result"><i class="far fa-thumbs-up me-3"></i>${card.positive_num}</div>`;

    innerDiv2.innerHTML += `<input type="hidden" class="like" name="command" value="${card.positive_num}"/>`;
    innerDiv2.innerHTML += `<input type="hidden" class="tourist_id" name="tourist_spot_id" value="${card.tourist_spot_id}"/>`;

    outerform.appendChild(innerDiv1);
    outerform.appendChild(innerDiv2);
    
    outerform.innerHTML += `</form>`;

    return outerform;
}

//page number

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
            let displayCardsIndex = Math.max(page -1, 0) * cardPerPage;
            let endCard = (displayCardsIndex) + cardPerPage;

            displayCards = cards.slice(displayCardsIndex, endCard);
            generateCard();
        }
    });
}


    //like addPositive
   function like_func(spotId){
	const likeNum = document.querySelectorAll('#like_result');
	
   const xhttp = new XMLHttpRequest(); 
   xhttp.addEventListener('readystatechange', (e) => {
	
	const test = document.querySelectorAll('.tourist_id');
	
       const readyState = e.target.readyState;
       const httpStatus = e.target.status;
       if(readyState == 4 && httpStatus == 200) {
   			
			for(var i = 0; i < test.length; ++i){
				if(spotId == $(test[i]).val()){
					likeNum[i].innerHTML = '<i class="far fa-thumbs-up me-3"></i>' + Object.values(JSON.parse(xhttp.responseText))[8];
				}
			}		
        }
  });
     xhttp.open('GET', './like/' + spotId, true);
     xhttp.setRequestHeader('content-type', 'application/json;charset=UTF-8');

     xhttp.send();
  
};

const searchBtn = document.getElementById('searchBtn');
const searchValue = document.getElementById('searchValue');
searchBtn.addEventListener('click', () =>{
		
		$(document).ready(function() {
        $("#contents-body").empty();

		var textValue = searchValue.value;
   		searchRequest(textValue);
 		});
});


function searchRequest(textValue) {
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = setVariable;

    xhttp.open('GET', '/jeju/spotSearch/'+textValue, true);
    xhttp.send();
}