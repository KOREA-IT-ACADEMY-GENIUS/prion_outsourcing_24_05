<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="API TEST"></c:set>

<%@ include file="../common/head.jspf"%>
<section class="main-section">
  <style>
    .main-section {
      background-color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 80px 60px;
    }

    @media (max-width: 991px) {
      .main-section {
        padding: 0 20px;
      }
    }

    .content-container {
      display: flex;
      margin-top: 49px;
      width: 100%;
      max-width: 1316px;
      flex-direction: column;
      align-items: center;
    }

    @media (max-width: 991px) {
      .content-container {
        max-width: 100%;
        margin-top: 40px;
      }
    }

    .heading {
      color: #000;
      text-align: center;
      letter-spacing: -1.26px;
      font: 700 42px/150% Pretendard, sans-serif;
    }

    .service-options {
      display: flex;
      position:relative;
      margin-top: 72px;
      max-width: 100%;
      width: 100%;
      gap: 20px;
      font-size: 30px;
      color: rgba(0, 0, 0, 0.4);
      font-weight: 600;
      white-space: nowrap;
      text-align: center;
      justify-content: space-around;
      
    }

    @media (max-width: 991px) {
      .service-options {
        margin-top: 40px;
        white-space: initial;
      }
    }

    .active-service,
    .inactive-service {
    }

    .underline {
      background-color: #4dbf5e;
      margin-top: 7px;
      height: 2px;
    }

    .publication-heading {
      color: #000;
      text-align: center;
      letter-spacing: -1.26px;
      margin-top: 72px;
      font: 700 32px Pretendard, sans-serif;
    }

    @media (max-width: 991px) {
      .publication-heading {
        margin-top: 40px;
      }
    }

    .publication-types {
      align-self: stretch;
      display: flex;
      margin-top: 73px;
      gap: 10px;
      font-size: 23px;
      color: rgba(0, 0, 0, 0.4);
      font-weight: 400;
      text-align: center;
      letter-spacing: -0.72px;
      line-height: 236%;
      justify-content: space-between;
    }

    @media (max-width: 991px) {
      .publication-types {
        max-width: 100%;
        flex-wrap: wrap;
        margin-top: 40px;
      }
    }

    .publication-button {
      justify-content: center;
      align-items: center;
      border-color: rgba(0, 0, 0, 0.2);
      border-style: solid;
      border-width: 1px;
      width: 500px;
      height: 55px;
      text-align: center;
      background-color: #fff;
    }
    
    .publication-button.active {
    background-color: #4dbf5e; 
    color: #fff;
}


    @media (max-width: 991px) {
      .publication-button {
        max-width: 100%;
        padding: 0 20px;
      }

    }

    .image-gallery {
      margin-top: 50px;
      width: 1281px;
      max-width: 100%;
    }

    @media (max-width: 991px) {
      .image-gallery {
        margin-top: 40px;
      }
    }

    .image-row {
      gap: 20px;
      display: flex;
    }

    @media (max-width: 991px) {
      .image-row {
        flex-direction: column;
        align-items: stretch;
        gap: 0px;
      }
    }

    .image-column {
      display: flex;
      flex-direction: column;
      line-height: normal;
      width: 33%;
    }

    @media (max-width: 991px) {
      .image-column {
        width: 100%;
      }
    }

    .image-wrapper {
      display: flex;
      flex-grow: 1;
      flex-direction: column;
      font-size: 22px;
      color: #000;
      font-weight: 400;
      letter-spacing: -0.66px;
      line-height: 150%;
    }

    @media (max-width: 991px) {
      .image-wrapper {
        margin-top: 19px;
      }
    }

    .image {
      aspect-ratio: 1.79;
      object-fit: auto;
      object-position: center;
      width: 100%;
    }

    .image-description {
      margin-top: 16px;
    }

.active-service1, .inactive-service2, .inactive-service3 {
    position: relative;
/*     margin-left: 30px; */
/*     margin-right: 5px; */
    
}


/* 수정 필요 */

.active-service1 {
 color:black;
}

/* .active-service1::after { */
/*  width: 100%;  */
/*  content: ""; */
/*  position: absolute;  */
/*  bottom: -3px;  */
/*  left: 0;  */
/*  width: 0;  */
/*  height: 3px; */
/*  background-color: #4dbf5e; */
/*  } */

.inactive-service2::after, .inactive-service3::after {

    content: "";
    position: absolute;
    bottom: -3px;
    left: 0;
    width: 0;
    height: 3px;
    background-color: transparent;
    transition: background-color 0.3s, width 0.3s;

}

/* .active-service1:hover::after { */
/*     width: 100%; */
/*     background-color: #4dbf5e; */
/*     color:black; */
/* } */

.inactive-service2:hover::after {
    width: 100%;
    background-color: #4dbf5e;
    color:black;
}

.inactive-service3:hover::after {
    width: 100%;
    background-color: #4dbf5e;
    color:black;
}

a:hover{
color:black;
transition: 1s;
}

#tab{

width: 130px;

}

.bottom-bar{
  position: absolute;
  bottom: -3px;
  left: 0;  
  width: 0;  
  height: 3px; 
  background-color: #4dbf5e;
}
  </style>

<script>
document.addEventListener("DOMContentLoaded", function() {
    var buttons = document.querySelectorAll('.publication-button');
    
    buttons.forEach(function(button) {
        button.addEventListener('click', function() {
            // Remove active class from all buttons
            buttons.forEach(function(btn) {
                btn.classList.remove('active');
            });
            
            // Add active class to the clicked button
            this.classList.add('active');
        });
    });
});

document.addEventListener("DOMContentLoaded", function() {
    var buttons = document.querySelectorAll('.publication-button');
    var sections = document.querySelectorAll('.image-gallery');

    buttons.forEach(function(button, index) {
        button.addEventListener('click', function() {
        	// 모든 버튼에서 활성화 클래스를 제거
            buttons.forEach(function(btn) {
                btn.classList.remove('active');
            });
            // 클릭된 버튼에 활성화 클래스 추가
            sections.forEach(function(section) {
                section.style.display = 'none';
            });

            // 모든 섹션을 숨김
            this.classList.add('active');
         	// 해당 섹션을 표시
            sections[index].style.display = 'block';
        });
    });

 	// 처음에 첫 번째 섹션을 표시
    sections.forEach(function(section, index) {
        if (index !== 0) {
            section.style.display = 'none';
        }
    });
});

</script>


  <div class="content-container">
    <h1 class="heading">제품/서비스</h1>
    <div class="service-options">
    <a href="" class="active-service1"><div class="tab-1" id="tab">인쇄출판<div class="bottom-bar" style="width : 130px"></div></div></a>
<a href="" class="inactive-service2"><div class="tab-2" id="tab">시즌제작물</div></a>
<a href="" class="inactive-service3"><div class="tab-3" id="tab">봉투</div></a>

    </div>
<!--     <h2 class="publication-heading">인쇄출판</h2> -->
    <div class="publication-types">
      <button class="publication-button section1-button">환양장책</button>
      <button class="publication-button section2-button">각양장책</button>
      <button class="publication-button section3-button">소프트양장책</button>
      <button class="publication-button section4-button">무선</button>
      <button class="publication-button section5-button">잡지</button>
      <button class="publication-button section6-button">카탈로그</button>
    </div>
    
    <div id="section1">
    <div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/93c784a57cc4b2cdd88116d510ff90898346be2d116d3c174453326c02f0aea5?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="날개 양장 제본 만화책" class="image" />
            <div class="image-description">날개 양장 제본 만화책</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/47044dd77b1bad7736a5c072cc8df14f23c3929771a132877f83a9ebd5f251d1?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="일러스트 그림책" class="image" />
            <div class="image-description">일러스트 그림책</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/ffcca37f4c43233645d8abcb6bcb50d0e0d7899c879dc397b578344f717b2d15?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="풀컬러 동화책" class="image" />
            <div class="image-description">풀컬러 동화책</div>
          </div>
        </div>
      </div>
      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/93c784a57cc4b2cdd88116d510ff90898346be2d116d3c174453326c02f0aea5?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="날개 양장 제본 만화책" class="image" />
            <div class="image-description">날개 양장 제본 만화책</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/93c784a57cc4b2cdd88116d510ff90898346be2d116d3c174453326c02f0aea5?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="날개 양장 제본 만화책" class="image" />
            <div class="image-description">날개 양장 제본 만화책</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/93c784a57cc4b2cdd88116d510ff90898346be2d116d3c174453326c02f0aea5?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="날개 양장 제본 만화책" class="image" />
            <div class="image-description">날개 양장 제본 만화책</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
    <div id="sectuon2">
    <div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/35ecbc266552011bb4ba664d629fef92d765ce3df7e8a1c56c14147e0dc23529?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="언론 연대기 도서" class="image" />
            <div class="image-description">언론 연대기 도서</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/61677d95741db27244cacbd9fb9657a3f4610cd698c47bc17ff23deaea6e6524?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="의학 정보 만화책" class="image" />
            <div class="image-description">의학 정보 만화책</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/340448bf3d8a76781e359ad5ee39743a906190a26c48ae75ada3376ca404e637?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="사철각양장 명화 도서" class="image" />
            <div class="image-description">사철각양장 명화 도서</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
    
    <div id="section3">
    <div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/af212ac6299ad1ae41f9e5eacaad1f618f5d5220f8521b19c867fc2c00baffd3?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="각양장 영문 도서" class="image" />
            <div class="image-description">각양장 영문 도서</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/8658d82d12fd877de431731d3c9e437afacb82e5f488f55eb587b762ad3905eb?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="작품 아트북" class="image" />
            <div class="image-description">작품 아트북</div>
          </div>
        </div>
        </div>
      </div>
    </div>
    
    <div id="section4">
    <div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/91f753c708bb627c7598e8efeaa5c0064bc3676d8320bdba2eba968e970fc495?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="아동 도서" class="image" />
            <div class="image-description">아동 도서</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/366090d29496c0fc9eba1a9c916ad1af803a22c7a7ecff81d4ea03709890b2b7?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="전시회 카탈로그" class="image" />
            <div class="image-description">전시회 카탈로그</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/420ea46fea179155ca3cc64749a82df8545297962b25b49e5a1e1e4fc561d82d?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="각양장 도서" class="image" />
            <div class="image-description">각양장 도서</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
    
    <div id="section5"><div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/366090d29496c0fc9eba1a9c916ad1af803a22c7a7ecff81d4ea03709890b2b7?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="아동 도서" class="image" />
            <div class="image-description">아동 도서</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/366090d29496c0fc9eba1a9c916ad1af803a22c7a7ecff81d4ea03709890b2b7?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="전시회 카탈로그" class="image" />
            <div class="image-description">전시회 카탈로그</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/366090d29496c0fc9eba1a9c916ad1af803a22c7a7ecff81d4ea03709890b2b7?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="각양장 도서" class="image" />
            <div class="image-description">각양장 도서</div>
          </div>
        </div>
      </div>
    </div></div>
    
        
    <div id="section6"><div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/91f753c708bb627c7598e8efeaa5c0064bc3676d8320bdba2eba968e970fc495?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="아동 도서" class="image" />
            <div class="image-description">아동 도서</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/91f753c708bb627c7598e8efeaa5c0064bc3676d8320bdba2eba968e970fc495?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="전시회 카탈로그" class="image" />
            <div class="image-description">전시회 카탈로그</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/91f753c708bb627c7598e8efeaa5c0064bc3676d8320bdba2eba968e970fc495?apiKey=0b15629a671e403aa0993648c58d92e2&" alt="각양장 도서" class="image" />
            <div class="image-description">각양장 도서</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
  </div>
</section>