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

    xhttp.open('GET', '/jeju/RestaurantBoard', true);
    xhttp.send();
}

function setVariable() {
    if(xhttp.readyState === XMLHttpRequest.DONE) {
        if(xhttp.status === 200) {
            console.dir(xhttp);
            cards = JSON.parse(xhttp.responseText);
            totalcards = cards.length;
            totalPages = Math.ceil(totalcards/cardPerPage);
            
            applyPagination();
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

    cardGroup.appendChild(cardBorder);

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

    cardBody.innerHTML += `<a href="/jeju/listFamous?famous_restaurant_id=${card.famous_restaurant_id}" 
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

const addIconPart = () => {
    const outerDiv = document.createElement('div');
    const innerDiv1 = document.createElement('div');
    const innerDiv2 = document.createElement('div');

    outerDiv.classList.add('author');
    outerDiv.classList.add('align-items-center');
    outerDiv.classList.add('p-2');

    innerDiv1.classList.add('mt-6');
    innerDiv2.classList.add('mt-2');

    innerDiv1.setAttribute('id', 'icon');
    innerDiv2.setAttribute('id', 'icon');

    innerDiv1.innerHTML += '<i id="icon" onclick="like_func()" class="far fa-thumbs-up"></i>';
    innerDiv1.innerHTML += '<i class="far fa-thumbs-down"></i>';

    innerDiv2.innerHTML += '<p>좋아요</p>';
    innerDiv2.innerHTML += '<p>싫어요</p>';

    outerDiv.appendChild(innerDiv1);
    outerDiv.appendChild(innerDiv2);
    
    return outerDiv;
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
    function like_func(){
        var icon_thumbs = $("#icon"); // icon
        var tourist_spot_id = $(card.tourist_spot_id).val();

        $ajax({
            url: "/jeju/likeCount",
            type:"GET",
            cache: false,
            dataType:"json",
            data: 'tourist_spot_id='+tourist_spot_id,
            seccess: function(data){
                var mag='';
                var like_img='';
                msg += data.msg;
                alert(msg);
                  
                  $('#like_img', frm_read).attr('src', like_img);
                  $('#like_cnt').html(data.like_cnt);
                  $('#like_check').html(data.like_check);
                },
                error: function(request, status, error){
                  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
            
    }


    