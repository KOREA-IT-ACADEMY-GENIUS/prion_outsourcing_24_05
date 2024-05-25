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
}

.about_menubar>ul>li:hover>button {
	background-color: red;
}

/* 세션 페이지 */
section {
	background-color: skyblue;
	width: 100vw;
	height: 100vh;
	min-height: 100vh;
}

section {
	display: none;
}

section.active {
	display: block;
}

/*회사 인사말*/
.intro_text_box {
	background-color: red;
	text-align: center;
	height: 150px;
}

/*인사말 화면*/
.greeting-div {
	border: 2px solid red;
	padding: 20px;
	text-align: left;
	width: 60%;
	line-height: 1.6;
	white-space: pre-line;
}

#greeting {
	font-size: 1.2em;
	color: #333;
}
/* ### */
.section3 img {
	width: 800px;
	height: auto;
}
</style>

<div class="title_box" style="background-color: red;">
	<h1>ABOUT</h1>
</div>

<nav class="about_menubar flex justify-center items-center web-size">
	<ul class="flex justify-around">
		<li><button data-target="section1">인사말/비전</button></li>
		<li><button data-target="section2">연혁</button></li>
		<li><button data-target="section3">보유기계</button></li>


	</ul>
</nav>

<nav class="about_menubar flex justify-center items-center mobile-size">
	<select name="" id="">
		<option value="">인사말/비전</option>
		<option value="">연혁</option>
		<option value="">보유기계</option>
	</select>

</nav>

<section id="section1" class="active">
	<div class="flex justify-center"
		style="background-color: #afafaf; width: 100%; height: 100%;">
		<div id="greeting-div" class="greeting-div">
			<h1 id="greeting"></h1>
		</div>
	</div>


</section>

<section id="section2">연혁</section>

<!-- <img src="https://picsum.photos/536/354" alt="" /> -->

<section id="section3" class="machines-section">
	<div class="flex justify-center"
		style="background-color: #afafaf; width: 100%; height: 100%;">
		<div style="width: 80%; height: 100%; border: 2px solid red;">
			<img src="https://picsum.photos/536/354" alt="" />
		</div>



	</div>

</section>








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
	    const content = `안녕하세요
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

	-대표이사 김현우`;
	    let index = 0;

	    function typeWriter() {
	        if (index < content.length) {
	            greetingElement.innerHTML += content.charAt(index);
	            index++;
	            setTimeout(typeWriter, 15); // Adjust the speed as needed
	        }
	    }

	    typeWriter();
	});
	
	
		
	</script>




<%@ include file="../common/foot.jspf"%>