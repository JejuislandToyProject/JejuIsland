// 컨트롤러를 통해 넘어온 데이터들을 자바스크립트단에서 카드로 만들어 주는 기능 
const addToList = (jsonData) => {
      
     const jsonDataDiv = document.createElement('hs');
     jsonDataDiv.setAttribute('id','jsonData');
   
      const div1 = document.createElement('div');
      div1.setAttribute('class','card mb-1');
      
      const div2 = document.createElement('div');
      div2.setAttribute('class', 'card-main');
      
      const div3 = document.createElement('div');
      div3.setAttribute('class', 'row');
      
      const div_image = document.createElement('div');
      div_image.setAttribute('class', 'col-4');
      div_image.setAttribute('id','jsonImg');
      div_image.innerHTML = "<img id=img-size src="+ jsonData.image + ">";
      const div4 = document.createElement('div');
      div4.setAttribute('class', 'col-6');
      
      const div_title = document.createElement('div');
      div_title.setAttribute('class','text-sm mb-0 text-capitalize font-weight-bold');
      div_title.setAttribute('id', 'jsonTitle');
      div_title.innerText = jsonData.title;
      
      const div_location = document.createElement('div');
      div_location.setAttribute('id', 'jsonLocation');
      div_location.innerText = jsonData.location;
      
      const btn_plus = document.createElement('button');
      btn_plus.setAttribute('class', "cardSmallBtn");
      btn_plus.setAttribute('id', jsonData.title);
      btn_plus.setAttribute('value', jsonData.latitude +'/'+ jsonData.longitude);
      btn_plus.setAttribute('onClick', `deleteRow(this),addCard(this.id, this.value)`);
      btn_plus.innerText = '+';
   
      right_box3.appendChild(jsonDataDiv);
      jsonDataDiv.appendChild(div1);
      div1.appendChild(div2);
      div2.appendChild(div3);
      div3.appendChild(div_image);   
      div3.appendChild(div4);
      div4.appendChild(div_title);
      div4.appendChild(div_location);
      div4.appendChild(btn_plus);
     
};

//오른쪽 카드리스트에서 선택 시 왼쪽 선택목록으로 들어갈 카드를 만들어주는 기능 
const leftSidebar_3 = document.getElementById('leftSidebar-3');
const addToListLeft = (jsonDataLeft) => {
        
         const jsonDataDiv = document.createElement('hs');
         jsonDataDiv.setAttribute('id','jsonDataLeft');
       
          const div1 = document.createElement('div');
          div1.setAttribute('class','card mb-1');
          
          const div2 = document.createElement('div');
          div2.setAttribute('class', 'card-main');
          
          const div3 = document.createElement('div');
          div3.setAttribute('class', 'row');
          
          const div_image = document.createElement('div');
          div_image.setAttribute('class', 'col-4');
          div_image.setAttribute('id','jsonImg');
          div_image.setAttribute('ondragstart' ,'return false'); // 이미지의 드래그를 막아줌
          div_image.innerHTML = "<img id=img-size src="+ jsonDataLeft.image + ">";

          const div4 = document.createElement('div');
          div4.setAttribute('class', 'col-6');
          
          const div_title = document.createElement('div');
          div_title.setAttribute('class','text-sm mb-0 text-capitalize font-weight-bold');
          div_title.setAttribute('id', 'jsonTitle');
          div_title.innerText = jsonDataLeft.title;
          
          const div_location = document.createElement('div');
          div_location.setAttribute('id', 'jsonLocation');
          div_location.innerText = jsonDataLeft.location;
          
          const btn_plus = document.createElement('button');
          btn_plus.setAttribute('class', "cardSmallBtn");
          btn_plus.setAttribute('id', jsonDataLeft.title);
          btn_plus.setAttribute('value', jsonDataLeft.latitude +'/'+ jsonDataLeft.longitude);
          btn_plus.setAttribute('onClick', `deleteRow(this, this.id), deleteMarkers(map, this.value)`);
          btn_plus.innerText = 'x';

          leftSidebar_3.appendChild(jsonDataDiv);
          jsonDataDiv.appendChild(div1);
          div1.appendChild(div2);
          div2.appendChild(div3);
          div3.appendChild(div_image);   
          div3.appendChild(div4);
          div4.appendChild(div_title);
          div4.appendChild(div_location);
          div4.appendChild(btn_plus);
};



// 여행경로 저장 버튼 클릭 시 데이터들을 모달에 카드형식으로 만들어 주는 기능 
const addSaveCourseModal = (jsonData) => {
     
     const maindiv = document.createElement('hs');
     maindiv.setAttribute('class','modalcard');
     
     const divfirst = document.createElement('div');
     divfirst.setAttribute('class','modalcard-header p-0 mx-3 mt-3 position-relative z-index-1');
     
     const div1 = document.createElement('div');
     div1.setAttribute('class','d-block');
    
     
     const itemimage = document.createElement('img');
     itemimage.src = jsonData.image;
     itemimage.setAttribute('class','modalimg-fluid border-radius-lg');
     
     
     const divsecond = document.createElement('div');
     divsecond.setAttribute('class','card-body pt-2');
     
     const span1 = document.createElement('span');
     span1.setAttribute('class','text-gradient text-primary text-uppercase text-xs font-weight-bold my-2');
     span1.innerText = jsonData.title;
     
     courseItems.appendChild(maindiv);
     maindiv.appendChild(divfirst);
     divfirst.appendChild(div1);
     div1.appendChild(itemimage);
     maindiv.appendChild(divsecond);
     divsecond.appendChild(span1);   
    
};