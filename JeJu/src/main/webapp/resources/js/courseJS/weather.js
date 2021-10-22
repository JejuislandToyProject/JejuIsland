// 경로페이지가 로딩되는 동시에 날씨 정보를 가져와주는 기능 
   window.onload=function(){
      const xhttp = new XMLHttpRequest();
      const weatherCon = document.getElementById('weather-con');
      const weatherPty = document.getElementById('pty');
      const weatherTemp = document.getElementById('temp');
      const addToWeather = (weatherDto) => {
         
         weatherCon.innerHTML = weatherDto.sky;
         weatherPty.innerHTML = '강수량: ' + weatherDto.pty + '%';
         weatherTemp.innerHTML = '현재온도: ' + weatherDto.temp + '°C';
      };
      
      xhttp.addEventListener('readystatechange', (e) => {
         const readyState = e.target.readyState;
         const httpStatus = e.target.status;
         
         if(readyState == 4 && httpStatus == 200) {
            addToWeather(JSON.parse(e.target.responseText));
         }
      });   
      
      xhttp.open('GET', './weather', true);
      xhttp.send();
   };