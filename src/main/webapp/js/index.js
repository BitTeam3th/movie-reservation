// // XMLHttpRequest 객체의 생성
// var xhr = new XMLHttpRequest();

// // 비동기 방식으로 Request를 오픈한다
// xhr.open('GET', 'db/db.json');
// // Request를 전송한다

// console.log(xhr.responseText);

// xhr.send();

// xhr.onreadystatechange = function () {
// // 서버 응답 완료 && 정상 응답
// if (xhr.readyState !== XMLHttpRequest.DONE) return;

// if (xhr.status === 200) {
//     console.log(xhr.responseText);

//     // Deserializing (String → Object)
//     responseObject = JSON.parse(xhr.responseText);

//     // JSON → HTML String
// } else {
//     console.log(`[${xhr.status}] : ${xhr.statusText}`);
// }
//     };

var jsondata = 
{
    "movie" : [
      {
        "id": "movie1",
        "title": "토르: 러브 앤 썬더",
        "content": "슈퍼 히어로 시절이여, 안녕! 이너피스를 위해 자아 찾기 여정을 떠난 천둥의 신 ‘토르’ 그러나, 우주의 모든 신들을 몰살하려는 신 도살자 ‘고르’의 등장으로 ‘토르’의 안식년 계획은 산산조각 나버린다. ‘토르’는 새로운 위협에 맞서기 위해, ‘킹 발키리’, ‘코르그’, 그리고 전 여자친구 ‘제인’과 재회하게 되는데, 그녀가 묠니르를 휘두르는 ‘마이티 토르’가 되어 나타나 모두를 놀라게 한다. 이제, 팀 토르는 ‘고르’의 복수에 얽힌 미스터리를 밝히고 더 큰 전쟁을 막기 위한 전 우주적 스케일의 모험을 시작하는데... 우주 최고의 ‘갓’ 매치가 시작된다!",
        "img_src": "img/img_movie1.jpg"
      },
      {
        "id": "movie2",
        "title": "탑건: 매버릭",
        "content": "최고의 파일럿이자 전설적인 인물 매버릭(톰 크루즈)은 자신이 졸업한 훈련학교 교관으로 발탁된다. 그의 명성을 모르던 팀원들은 매버릭의 지시를 무시하지만 실전을 방불케 하는 상공 훈련에서 눈으로 봐도 믿기 힘든 전설적인 조종 실력에 모두가 압도된다. 매버릭의 지휘아래 견고한 팀워크를 쌓아가던 팀원들에게 국경을 뛰어넘는 위험한 임무가 주어지자 매버릭은 자신이 가르친 동료들과 함께 마지막이 될 지 모를 하늘 위 비행에 나서는데…",
        "img_src": "img/img_movie2.jpg"
      },      
      {
        "id": "movie3",
        "title": "헤어질 결심",
        "content": "산 정상에서 추락한 한 남자의 변사 사건. 담당 형사 '해준'(박해일)은 사망자의 아내 '서래'(탕웨이)와 마주하게 된다. 산에 가서 안 오면 걱정했어요, 마침내 죽을까 봐. 남편의 죽음 앞에서 특별한 동요를 보이지 않는 '서래'. 경찰은 보통의 유가족과는 다른 '서래'를 용의선상에 올린다. '해준'은 사건 당일의 알리바이 탐문과 신문, 잠복수사를 통해 '서래'를 알아가면서 그녀에 대한 관심이 점점 커져가는 것을 느낀다. 한편, 좀처럼 속을 짐작하기 어려운 '서래'는 상대가 자신을 의심한다는 것을 알면서도 조금의 망설임도 없이 '해준'을 대하는데…. 진심을 숨기는 용의자 용의자에게 의심과 관심을 동시에 느끼는 형사 그들의 헤어질 결심",
        "img_src": "img/img_movie3.jpg"
      },
      {
        "id": "movie4",
        "title": "마녀2",
        "content": "’자윤’이 사라진 뒤, 정체불명의 집단의 무차별 습격으로 마녀 프로젝트가 진행되고 있는 ‘아크’가 초토화된다. 그곳에서 홀로 살아남은 ‘소녀’는 생애 처음 세상 밖으로 발을 내딛고 우연히 만난 ‘경희’의 도움으로 농장에서 지내며 따뜻한 일상에 적응해간다. 한편, ‘소녀’가 망실되자 행방을 쫓는 책임자 ‘장’과 마녀 프로젝트의 창시자 ‘백총괄’의 지령을 받고 제거에 나선 본사 요원 ‘조현’, ‘경희’의 농장 소유권을 노리는 조직의 보스 ‘용두’와 상해에서 온 의문의 4인방까지 각기 다른 목적을 지닌 세력이 하나 둘 모여들기 시작하면서 ‘소녀’ 안에 숨겨진 본성이 깨어나는데… 모든 것의 시작, 더욱 거대하고 강력해진 마녀가 온다.",
        "img_src": "img/img_movie4.jpg"
      },
      {
        "id": "movie5",
        "title": "범죄도시2",
        "content": "가리봉동 소탕작전 후 4년 뒤, 금천서 강력반은 베트남으로 도주한 용의자를 인도받아 오라는 미션을 받는다. 괴물형사 ‘마석도’(마동석)와 ‘전일만’(최귀화) 반장은 현지 용의자에게서 수상함을 느끼고, 그의 뒤에 무자비한 악행을 벌이는 ‘강해상’(손석구)이 있음을 알게 된다. ‘마석도’와 금천서 강력반은 한국과 베트남을 오가며 역대급 범죄를 저지르는 ‘강해상’을 본격적으로 쫓기 시작하는데... 나쁜 놈들 잡는 데 국경 없다! 통쾌하고 화끈한 범죄 소탕 작전이 다시 펼쳐진다!",
        "img_src": "img/img_movie5.jpg"
      }
    ],
    "movie_time" : [
        {
            "id" : "",
            "movie_id" : "",
            "time" : ""
        }
    ]
};

console.log(jsondata);

let newContent = ``;
newContent += `
<h1> BIT <span> 시네마 </span></h1>
    <ul class="auto">
        <li class="btnStart"><i class="fas fa-play"></i></li>
        <li class="btnStop"><i class="fas fa-pause"></i></li>
    </ul>

<div class="swiper-wrapper" id="swiper-wrapper1">
    `
    for (let i = 0 ; i < jsondata.movie.length; i++) {
        newContent += `
    <div class="swiper-slide">
        <div id="`+jsondata.movie[i].id+`" class="inner" onclick="showLayer(this.id);">
            <div class="con" >
                <a href="javascript:void(0)" >
                <img src="`+jsondata.movie[i].img_src+`">
                <h2>`+jsondata.movie[i].title+`</h2>
                <p>`+jsondata.movie[i].content+`</p>
                </a>
            </div>
        </div>
    </div>
    `
    }
newContent += `    
</div>

    <!-- 좌우버튼 -->
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    
    <!-- 페이징 버튼 -->
    <div class="swiper-pagination"></div>

    <div id="SearchLayer" align='center' style="display:none">
        <div id="layerWhite">
            <div><img id="id_layerImg" class="layerImg" src="img/img_movie1.jpg" style=""></div>
            <div class="layerDesc" style=""><br/><span id="spanDesc"></span></div>
            <div><a href="./reserve.html"><img class="layerButton" src="img/bookButton.jpg"></a></div>
        </div>
    </div>
`;
document.getElementById('wrap').innerHTML = newContent;

const swiper = new Swiper('.wrap',{	
    direction: "horizontal",
    loop: true,						
    pagination: {
        el: '.swiper-pagination',
        type: 'fraction'
    },	
    navigation : {				
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',			
    },
    spaceBetween: 0,
    slidesPerView: "auto",
    grabCursor: true,
    centeredSlides :true,
    speed:1000,
    effect:"coverflow",	
    coverflowEffect: {
        rotate: 50,
        stretch: -100,
        depth: 400,
        modifier: 1,
        slideShadows: false,
    },
    autoplay: {
        delay:1000,		
        disableOnInteraction : true
    }	
});

// .btnStart 요소를 찾아서 btnStart에 저장
const btnStart = document.querySelector(".btnStart");
// .btnStop 요소를 찾아서 btnStop에 저장
const btnStop = document.querySelector(".btnStop");

//btnStart버튼을 클릭시 자동롤링 시작
btnStart.addEventListener("click",()=>{
    swiper.autoplay.start();
});

//btnStart버튼을 클릭시 자동롤링 정지
btnStop.addEventListener("click",()=>{
    swiper.autoplay.stop();
});

function wrapWindowByMask() {
    //화면의 높이와 너비를 구한다.
    var maskHeight = $(document).height();
    var maskWidth = $(window).width();

    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채운다.
    $('#SearchLayer').css({ 'width': maskWidth, 'height': maskHeight });
}

/// 화면의 중앙에 레이어띄움
function showLayer(input) {
    wrapWindowByMask();
    $("#SearchLayer").css("position", "absolute");
    $("#SearchLayer").css("top", Math.max(0, (($(window).height() - $("#SearchLayer").outerHeight()) / 2) + $(window).scrollTop() - 100) + "px");
    $("#SearchLayer").css("left", Math.max(0, (($(window).width() - $("#SearchLayer").outerWidth()) / 2) + $(window).scrollLeft()) + "px");
    $('#SearchLayer').show();
    document.getElementById('id_layerImg').src="img/img_"+input+".jpg";
    k = input.substring(5)-1;
    document.getElementById('spanDesc').innerText= jsondata.movie[k].content

    setTimeout(function() {
        $('html').click((e) => {
            if (e.target.id !== 'layerWhite' && $(e.target).parents('#layerWhite').length === 0) {
                location.reload();
            }
        });
      }, 500);   
}

function closeLayer() {
    loacation.reload();
}