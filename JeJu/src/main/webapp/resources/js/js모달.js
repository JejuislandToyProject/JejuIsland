const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');

 btnOpenPopup.addEventListener('click', () => {
  modal.classList.toggle('show');
  
   if (modal.classList.contains('show')) {
     body.style.overflow = 'hidden'; // 퀴즈 페이지가 열리면 본문의 스크롤이 감춰진다
    }
});

/* 모달창 영역 밖으로 벗어나 버튼을 누를시 닫히는 기능이나 문제를 풀다가
    창이 닫혀서 초기화되면 기분이 나쁠 가능성이 있어 막아두고 버튼을 눌러야 닫을수 있게 해둔다 */
// modal.addEventListener('click', (event) => {
//   if (event.target === modal) {
//     modal.classList.toggle('show');

//     if (!modal.classList.contains('show')) {
//       body.style.overflow = 'auto'; // 퀴즈페이지가 닫히면 스크롤 다시 생김
//     }
//   }
// });

// 화면 슬라이드
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > 20) {slideIndex = 1} ;
  if (n < 1) {slideIndex = 20};
  for (i = 0; i < 20; i++) {
      slides[i].style.display = "none";  
      
  }
  
  slides[slideIndex-1].style.display = "block";  
}




// 버튼 색 변경
// 눌렀을때에 char a면 누른 반환받은 숫자의 값은 오랜지색
// 나머지는 검정색으로!

function color_click(clicked_id){
  for(var i = 0; i < 20; ++i){
    if(clicked_id.charAt(0) == String.fromCharCode(97+i)){
   
      document.getElementById(clicked_id).style.color = 'orange'
    for(var j = 1; j < 5; ++j){
      if(clicked_id != clicked_id.charAt(0)+j){
        
        document.getElementById(clicked_id.charAt(0)+j).style.color = 'black'
    }
  }
 }
}
}


// 퀴즈 선택 번호 저장 및 점수 체크

const storege_answer = ['2', '3', '1', '1', '4', '3', '2', '3', '1', '4', '2', '3', '3',
                '1', '3', '3', '4', '3', '3', '2'];

let answer = [];
function reply_click(clicked_id){
for(var i = 0; i < 20; ++i){
  if(clicked_id.charAt(0) == String.fromCharCode(97+i)) answer[i] = clicked_id.charAt(1);
  }
 console.log('배열 값 : ',answer);
}

//정답 제출
let scores = 0;
function answer_path(){
  document.getElementsByClassName("slider_container")[0].style.display = "none";
  document.getElementById("on").style.display = "block";

  for(var i = 0; i < storege_answer.length; ++i){
    if(answer[i] === storege_answer[i]){
      scores += 5;
    } 
  }
  if(isNaN(scores)){
    scores = 0;
  }
  console.log('스코어 : ',scores);

  document.getElementById("score_check").innerHTML = `'${scores}'점`;
  
  var ment = ['제주도를 잘 모르시는군요!?', '제주도 좀 놀러다니셨나요!?', '당신은 제주도 전문가!!!', '혹시 제주도에서 사시나요?'];
  let ment_path = 0;
  if(scores >= 80){
    ment_path = ment[3];
  }else if(scores >= 60){
    ment_path = ment[2];
  }else if(scores >= 40){
    ment_path = ment[1];
  }else{
    ment_path = ment[0];
  }
  document.getElementById("ment").innerHTML = ment_path;
  
}

// 닫힐때 하는 일들의 기능 모음
function closs_box(){
  // 글자 색 초기화
  for(var i = 0; i < 20; ++i){
    document.getElementsByClassName("select_positive")[i].style.color = 'black';
  }
 // 배경화면 보이기
  document.getElementsByClassName("slider_container")[0].style.display = "block";
  document.getElementById("on").style.display = "none";
  modal.classList.toggle('show');
  body.style.overflow = 'auto';
  scores = 0;
  answer = [];
}

// 상시 닫기 버튼
const closs_btn = document.getElementById("closs_btn");

closs_btn.addEventListener("click", (e) =>{
  showSlides(slideIndex = 1);
  closs_box();
});

// 정답 제출 후 닫기 버튼
function quiz_close(){
  closs_box();
}