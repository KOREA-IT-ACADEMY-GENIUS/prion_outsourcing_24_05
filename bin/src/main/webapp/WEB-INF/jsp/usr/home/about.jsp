<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="ABOUT"></c:set>
<%@ include file="../common/head.jspf"%>
<style>
</style>

<style>
/* 반응형 넓이 */
@media ( max-width : 991px) {
	.web-size {
		display: none;
	}
}

@media ( min-width : 991px) {
	.mobile-size {
		display: none;
	}
}
/* 상단 타이틀 박스 */
.title_box {
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	width: 100%;
	height: 150px;
	font-size: 4rem;
}

.about-title {
	font-size: 42px;
	font-family: Pretendard, sans-serif;
	font-weight: 700;
}

/* about 메뉴바 */
.about_menubar {
	height: 100px;
	font-weight: bold;
	font-size: 2rem;
	margin-bottom: 20px; /* 하단 마진 추가 */
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
	border-top: 1px solid rgb(0, 0, 0, 0.1);
	border-bottom: 1px solid rgb(0, 0, 0, 0.1);
	flex-direction: column;
}

.custom-item {
	justify-content: center;
	align-items: center;
	max-width: 100%;
	width: 150px;
	padding-top: 16px;
	padding-bottom: 16px;
	font-weight: 600;
	/*     letter-spacing: 5px; */
}

.active-service1, .inactive-service2 {
	position: relative;
}

.active-service1::after, .inactive-service2::after {
	content: "";
	position: absolute;
	bottom: -3px;
	left: 0;
	width: 0;
	height: 2px;
	background-color: transparent;
	transition: background-color 0.3s, width 0.3s, color 0.3s;
}

.active-service1:hover::after {
	width: 100%;
	background-color: #4dbf5e;
}

.inactive-service2:hover::after {
	width: 100%;
	background-color: #4dbf5e;
}

/* 번역 버튼 */
.trans-btn {
	background-color: #ffffff;
	color: black;
	padding: 12px 15px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	border-radius: 5px;
}

.trans-btn:hover {
	text-decoration: underline;
}
/* 인사말 화면 */
.greeting-div {
	width: 100%;
	text-align: center;
	line-height: 1.6;
	white-space: pre-line;
}

/* 보유 기계 이미지 사진 크기 */
.fixed-size-image {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

/*보유기계 사진 호버시 기계이름 */
.picture-box h1 {
	border: none; /* 흰 줄 제거 */
	opacity: 0; /* 초기 투명도를 0으로 설정하여 숨김 */
	transition: opacity 0.5s ease; /* 투명도 변화에 대한 transition 효과 */
}

.machine-item:hover h1 {
	opacity: 0.7; /* 호버 시 투명도 조정 */
}

/*여기 잘보자*/
/* 페이지 구성  */
/* 고정  */
.about-container {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.pagehidden {
	display: none;
}
/* 여기 */
#container1 {
	height: 100vh;
}

/*구분선 divider*/
hr {
	border: none;
	height: 20px;
	width: 90%;
	height: 50px;
	margin-top: 0;
	border-bottom: 1px solid #1f1209;
	box-shadow: 0 20px 20px -20px #333;
	margin: -50px auto 10px;
}
</style>

<!-- 상단의 메뉴 fixed라 위치 보정용 빈 div  -->
<div style="height: 80px;"></div>

<div class="title_box">
	<div class="about-title">ABOUT</div>
</div>

<div class="about_menubar flex justify-center items-center">
	<div class="custom-container">
		<button class="custom-item active-service1" tabindex="0" data-target="container1">ABOUT</button>
		<button class="custom-item inactive-service2" tabindex="0" data-target="container2">MACHINES</button>
	</div>
</div>

<!-- 구분선 -->
<br />
<hr>

<div class="about-container" id="container1">
	<section class="about1-main">
		<div class=""">
			<div class="btn-box" style="text-align: center;">
				<button class="trans-btn" id="korean-btn">Korean</button>
				<button class="trans-btn" id="english-btn">English</button>
			</div>
			<div id="greeting-div" class="greeting-div">
				<div class="greeting" id="greeting"></div>
			</div>
		</div>
	</section>
</div>

<div class="about-container pagehidden" id="container2">
	<div class="picture-box flex flex-col items-center" style="width: 100%; height: 100%;">
		<!--여기서부터 하나의 틀  -->
		<div class="machine-item"
			style="width: 70%; height: 500px; position: relative; text-align: center; margin-bottom: 20px; margin-top: 20px;">
			<h1
				style="position: absolute; width: 100%; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.5); padding: 10px;">
				CTP<br>Plate Printer
			</h1>
			<img src="https://i.ibb.co/f1DSgzJ/img1.png" alt="" class="fixed-size-image" />
		</div>
		<!--h1 부분에 CTP / Plate Printer 이렇게 하나의 세트로 보고 한국어 영어로 입력
		<br>이 줄 바꿈을 해주니까 양옆으로 적는다
		  -->
		<!--여기까지 하나의 틀  -->
		<div class="machine-item"
			style="width: 70%; height: 500px; position: relative; text-align: center; margin-bottom: 20px;">
			<h1
				style="position: absolute; width: 100%; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.5); padding: 10px;">
				1도 디지털 양면 인쇄기 (신도리코)<br>1 color both sided digital printing machinery (Sindoh)
			</h1>
			<img src="https://i.ibb.co/f1DSgzJ/img1.png" alt="" class="fixed-size-image" />
		</div>
		<div class="machine-item"
			style="width: 70%; height: 500px; position: relative; text-align: center; margin-bottom: 20px;">
			<h1
				style="position: absolute; width: 100%; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.5); padding: 10px;">
				1도 양면 오프셋 인쇄기<br>1 color both sided offset printing machinery (Akiyama)
			</h1>
			<img src="https://i.ibb.co/f1DSgzJ/img1.png" alt="" class="fixed-size-image" />
		</div>
		<div class="machine-item"
			style="width: 70%; height: 500px; position: relative; text-align: center; margin-bottom: 20px;">
			<h1
				style="position: absolute; width: 100%; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.5); padding: 10px;">
				4도 단면 오프셋 인쇄기<br>4 color offset printing machinery (samurai)
			</h1>
			<img src="https://i.ibb.co/f1DSgzJ/img1.png" alt="" class="fixed-size-image" />
		</div>
		<div class="machine-item"
			style="width: 70%; height: 500px; position: relative; text-align: center; margin-bottom: 20px;">
			<h1
				style="position: absolute; width: 100%; top: 50%; left: 50%; transform: translate(-50%, -50%); background-color: rgba(255, 255, 255, 0.5); padding: 10px;">
				8도 양면 오프셋 인쇄기<br>8 color both sided offset printing machinery (akiyama)
			</h1>
			<img src="https://i.ibb.co/f1DSgzJ/img1.png" alt="" class="fixed-size-image" />
		</div>
	</div>
</div>
<!-- 구분선 -->
<hr>


<script>
/* 버튼 토글*/
document.querySelectorAll('.about_menubar button').forEach(button => {
    button.addEventListener('click', () => {
        const targetId = button.getAttribute('data-target'); // 클릭된 버튼의 data-target 속성 값 가져오기
        
        // 모든 about-container에 pagehidden 클래스 추가
        document.querySelectorAll('.about-container').forEach(div => {
            div.classList.add('pagehidden');
        });
        
        // 클릭된 버튼의 대상 컨테이너에서 pagehidden 클래스 제거
        document.getElementById(targetId).classList.remove('pagehidden');
    });
});
</script>
<script>
	/*인사말 부분 채팅 애니메이션 효과*/
	document.addEventListener("DOMContentLoaded", function() {
		const greetingElement = document.getElementById("greeting");
		//한국말 소개말
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
		
		HISTORY
		since 1961 세신문화(1st Gen) @pil-dong
		SEOUL (주)예원프린팅(2nd Gen) @ILSAN
		(주)프리온 (3rd Gen) ~ NOW @PAJU`;
		
		
		// 영어 소개말 그냥 번역기만 돌려서 임시처리
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
		
		HISTORY
		since 1961 세신문화(1st Gen) @pil-dong
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
					typingTimeout = setTimeout(write, 1); // 글씨를 그리는 속도 작을수록 빨라짐 1000ms 단위 15
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

		
		typeWriter(koreanContent);
	});
</script>


<%@ include file="../common/foot.jspf"%>