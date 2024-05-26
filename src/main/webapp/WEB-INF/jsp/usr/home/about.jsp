<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>


<!-- CSS styles -->

<style>
/* 반응형 넓이 */
@media ( max-width : 768px) {
	.web-size {
		display: none;
	}
}

@media ( min-width : 769px) {
	.mobile-size {
		display: none;
	}
}

/*상단 타이틀 박스 */
.title_box {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	width: 100vw;
	height: 150px;
}
/*about 메뉴바  */
.about_menubar {
	height: 100px;
	font-weight: bold;
	font-size: 2rem;
}

.about_menubar>ul>li:hover>button {
	background-color: red;
}

.custom-container {
	display: flex;
	gap: 10px;
	padding: 20px;
	text-align: center;
	font-size: 1.5rem;
	letter-spacing: -0.05em;
	flex-wrap: wrap;
}

.custom-item {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 16px 64px;
	border: 1px solid rgba(0, 0, 0, 0.2);
	max-width: 100%;
}

/* 세션 페이지 */
.about-container {
 	width: 100vw; 
	height: 700px;
	background-color: #afafaf;
}

.about-page {
	width: 100vw;
	display: none;
}

.about-page.active {
	display: block;
}

/*인사말 화면*/
.greeting-div {
	padding: 20px;
	text-align: center;
	/* width: 60%; */
	line-height: 1.6;
	white-space: pre-line;
}

#greeting {
	/* font-size: 1.2em; */
	/* color: #333; */
	
}
</style>
<div style="height: 80px;"></div>

<div class="title_box">
	<h1>ABOUT</h1>
</div>

<nav class="about_menubar flex justify-center items-center web-size">
	<div class="custom-container">
		<button class="custom-item " tabindex="0" data-target="section1">ABOUT</button>
		<button class="custom-item" tabindex="0" data-target="section2">MACHINES</button>

	</div>
</nav>



<nav class="about_menubar flex justify-center items-center mobile-size">
	<select name="" id="">
		<option value="">ABOUT</option>
		<option value="">MACHINES</option>

	</select>

</nav>

<div class="about-container">

	<section id="section1" class="active about-page">

		<div class="flex justify-center flex-col"
			style="width: 100%; height: 100%;">
			<div class="flex flex-row justify-center"
				style="border: 2px solid red;">
				<button class="btn btn-outline" id="korean-btn">Korean</button>
				<button class="btn btn-outline" id="english-btn">English</button>
			</div>
			<div id="greeting-div" class="greeting-div">
				<h1 id="greeting"></h1>
			</div>
		</div>
	</section>



	<section id="section2" class="about-page">
		<div class="machine-card-container">
			<div class="machine-card-items">
				<div class="machine-card flex"
					style="border: 2px solid red;">
					<div class="machine-img">
						<img src="https://picsum.photos/200/300" alt="" />
					</div>
					<div class="machine-name">기계이름</div>
				</div>

			</div>



		</div>

	</section>
</div>

<!-- js -->
<script>
	/*about 메뉴바안에서 각각의 버튼을 누르면 그에 맞는 section 페이지가 보일수 있도록 만들어주는 기능
	토글 클래스와 비슷한 기능*/
	 document.querySelectorAll('.about_menubar button').forEach(button => {
         button.addEventListener('click', () => {
        	 //click 즉 button에서 onclick 함수를 주는 행위와 같음
             const targetId = button.getAttribute('data-target');
        	 //각각의 버튼에 달린 data-target으로 찾아감
             
             // 모든 섹션의 active 클래스를 제거
             document.querySelectorAll('section').forEach(section => {
                 section.classList.remove('active');
             });
             
             // 클릭된 버튼과 관련된 섹션에 active 클래스 추가
             //targetId에 맞는 section 페이지에만 active 클래스를 추가해서 그 페이지만 보이게끔
             document.getElementById(targetId).classList.toggle('active');
         });
     });
	
	
	/*인사말 부분 채팅 애니메이션 효과*/
document.addEventListener("DOMContentLoaded", function() {
    const greetingElement = document.getElementById("greeting");

    const koreanContent = `안녕하세요
(주)프리온 대표 김현우입니다.
프리온은 3대에 걸쳐 64년의 역사를 가진 인쇄소입니다.

프리온은 Print + On의 약자로 언제나 열린 자세로 임한다는 뜻입니다.
첫째 딸의 이름인 온을 넣어 책임감을 부여했습니다.

2024년 프리온이 지향하는 점은 단순합니다.
최고 수준의 품질 관리와 고객 중심의 서비스입니다.
그 결과물로 고객의 편리함을 위해 
2024년에는 자체 ERP 시스템을 개발 중에 있습니다.
ERP 시스템의 자동 견적과 제작 관리 시스템을 통해 보다 정확하고 신속한 피드백이 가능할 것 입니다.

프리온은 늘 고객과 함께 성장하는 기쁨을 추구해왔습니다.
궁극적으로 국가와 사회에 보탬이 되는 기업이 되도록 노력하겠습니다.

세상을 이롭게 하고 선한 영향을 미치는 
프리온의 미래에 많은 신뢰와 성원 부탁드리겠습니다.

감사합니다.

-대표이사 김현우-

history since 1961 세신문화(1st Gen) @pil-dong
SEOUL (주)예원프린팅(2nd Gen) @ILSAN
(주)프리온 (3rd Gen) ~ NOW @PAJU`;

    const englishContent = `Hello,
This is Hyunwoo Kim, CEO of Prion.
Prion is a printing company with a 64-year history spanning three generations.

Prion is an abbreviation of Print + On, meaning always open and ready. It also includes the name of my first daughter, On, to emphasize responsibility.

In 2024, Prion's goals are simple:
- Highest level of quality control and customer-centric service.
To achieve this, we are developing our own ERP system for customer convenience.
The ERP system will enable more accurate and swift feedback through automatic quotation and production management systems.

Prion has always pursued the joy of growing with customers.
Ultimately, we aim to be a company that contributes to the nation and society.

We ask for your trust and support in the future of Prion,
which strives to benefit the world and exert a positive influence.

Thank you.

- CEO Hyunwoo Kim -

history since 1961 세신문화(1st Gen) @pil-dong
SEOUL (주)예원프린팅(2nd Gen) @ILSAN
(주)프리온 (3rd Gen) ~ NOW @PAJU`;

    let typingTimeout;

    function typeWriter(content) {
        clearTimeout(typingTimeout);
        let index = 0;
        greetingElement.innerHTML = '';

        function write() {
            if (index < content.length) {
                greetingElement.innerHTML += content.charAt(index);
                index++;
                typingTimeout = setTimeout(write, 15); // Adjust the speed as needed
            }
        }
        write();
    }

    document.getElementById("korean-btn").addEventListener("click", function() {
        typeWriter(koreanContent);
    });

    document.getElementById("english-btn").addEventListener("click", function() {
        typeWriter(englishContent);
    });

    // Default to Korean content on page load
    typeWriter(koreanContent);
});

		
	</script>






<%@ include file="../common/foot.jspf"%>