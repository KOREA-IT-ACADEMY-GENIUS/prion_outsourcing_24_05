<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="productService"></c:set>

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
        margin-top: 100px;
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

/*     .fpublication-heading { */
/*       color: #000; */
/*       text-align: center; */
/*       letter-spacing: -1.26px; */
/*       margin-top: 72px; */
/*       font: 700 32px Pretendard, sans-serif; */
/*     } */

/*     @media (max-width: 991px) { */
/*       .publication-heading { */
/*         margin-top: 40px; */
/*       } */
/*     } */

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
      border-radius: 5px;
    }
    
    .publication-button.active {
    background-color: #4dbf5e; 
    color: #fff;
}


    @media (max-width: 991px) {
      .publication-button {
        max-width: 100%;
        padding: 0 20px;
        margin-left: auto;
        margin-right: auto;
      }

    }

    .image-gallery {
      margin-top: 50px;
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
      margin-top: 50px;
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
      cursor: pointer;
    }
    
    
    
@media (max-width: 991px) {
      .image {
        width: 500px;
      }
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
    height: 2px;
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
  height: 2px; 
  background-color: #4dbf5e;
}

img {
  object-fit: cover;
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
    <h1 class="heading">PRODUCT/SERVICE</h1>
    <div class="service-options">
    <a href="" class="active-service1"><div class="tab-1" id="tab">인쇄출판<div class="bottom-bar" style="width : 130px"></div></div></a>
<a href="" class="inactive-service2"><div class="tab-2" id="tab">시즌제작물</div></a>
<a href="" class="inactive-service3"><div class="tab-3" id="tab">봉투</div></a>

    </div>
    <div class="publication-types">
      <button class="publication-button active section1-button">환양장책</button>
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
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트1</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트2</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트3</div>
          </div>
        </div>
      </div>

      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트4</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트5</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트6</div>
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
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트7</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트8</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트9</div>
          </div>
        </div>
      </div>
      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트10</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트11</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트12</div>
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
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트13</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트14</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트15</div>
          </div>
        </div>
        </div>
        <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트16</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트17</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트18</div>
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
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트19</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트20</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트21</div>
          </div>
        </div>
      </div>
      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트22</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트23</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트24</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
    
    <div id="section5"><div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트25</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트26</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트27</div>
          </div>
        </div>
      </div>
      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트28</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트29</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트30</div>
          </div>
        </div>
      </div>
    </div>
    </div>
    
        
    <div id="section6"><div class="image-gallery">
      <div class="image-row">
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트31</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트32</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트33</div>
          </div>
        </div>
      </div>
      <div class="image-row">
      <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트34</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트35</div>
          </div>
        </div>
        <div class="image-column">
          <div class="image-wrapper">
            <img loading="lazy" src="https://i.ibb.co/4jfypNw/Frame-4.png" alt="이미지 설명" class="image" />
            <div class="image-description">텍스트36</div>
          </div>
        </div>
      </div>
    </div>
    </div>
</div>
</section>
