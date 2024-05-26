<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Contact Us"></c:set>
<%@ include file="../common/head.jspf"%>


<style>
.contact-container {
	padding: 70px 60px;
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #fff;
	margin-top: 130px;
	margin-bottom: 100px;
}

@media ( max-width : 1920px) {
	.contact-container {
		padding: 0 20px;
	}
}

.contact-wrapper {
	width: 100%;
	max-width: 1140px;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

@media ( max-width : 1920px) {
	.contact-wrapper {
		max-width: 100%;
	}
}

.section-box {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: row;
	margin-left: auto;
	margin-right: auto;
}

@media ( max-width : 991px) {
	.section-box {
		flex-direction: column;
		justify-content: center;
		align-items: center;
	}
}

.heading-lg-contact {
	display: flex;
	font-family: "Pretendard", sans-serif;
	font-size:42px; 
	font-weight: 700;
	color: #000;
	text-align: center;
	align-self: center;
	margin-right: 50px;

}

@media ( max-width : 991px) {
	.heading-lg-contact {
		display: flex;
		text-align: center;
		align-self: center;
		margin-left: 20px;
	}
}

.section {
	display: flex;
	flex-direction: column;
	width: 100%;
}

.contact-section {
	margin-bottom: 220px;
}

@media ( max-width : 991px) {
	.section {
		max-width: 100%;
		margin-top: 40px;
	}
	.contact-section {
		margin-bottom: 0;
	}
}

.flex-container {
	display: flex;
	gap: 20px;
	flex-direction: column;
}

@media ( max-width : 1920px) {
	.flex-container {
		flex-direction: column;
		align-items: stretch;
		gap: 0;
	}
}

.flex-column {
	display: flex;
	flex-direction: column;
	line-height: normal;
	width: 100%;
}

@media ( max-width : 991px) {
	.flex-column {
		width: 90%;
	}
}

.card {
	flex-grow: 1;
	display: flex;
	flex-direction: column;
	padding: 11px 31px 25px 0;
}

.contact-text-bold {
	font: 700 19px/73% Pretendard, sans-serif;
	letter-spacing: 0.6px;
	color: #000;
}

.text-regular {
	font: 500 15px/27px Pretendard, sans-serif;
	letter-spacing: 0.2px;
	color: #000;
	margin-top: 26px;
}

.form-group {
	display: flex;
	gap: 20px;
	flex-wrap: nowrap;
	margin-top: 26px;
	width: 332px;
}

@media ( max-width :991x) {
	.form-group {
		max-width: 90%;
	}
}

.form-group>div {
	display: flex;
	gap: 7px;
	flex: 1;
}

.form-group label {
	font-size: 16px;
	color: #484848;
}

.form-group .required {
	font-size: 14px;
	color: #cc0101;
}

.form-row {
	display: flex;
	gap: 20px;
	margin-top: 4px;
	font-size: 16px;
	color: #9ea0a4;
}

.input-box {
	flex-grow: 1;
	border: 1px solid rgba(227, 227, 227, 1);
	padding: 14px 0;
	border-radius: 6px;
	background-color: #fff;
}

.contact-info {
	display: flex;
	flex-direction: column;
	flex-wrap: nowrap;
	margin-top: 24px;
	gap: 8px;
}

.contact-info label {
	font-size: 16px;
	color: #484848;
}

.contact-info .required {
	font-size: 14px;
	color: #cc0101;
}

.contact-info input {
	border: 1px solid rgba(227, 227, 227, 1);
	padding: 14px 0;
	border-radius: 6px;
	background-color: #fff;
	color: #9ea0a4;
	margin-top: 4px;
}

.textarea-box {
	border: 1px solid rgba(227, 227, 227, 1);
	padding: 14px;
	border-radius: 6px;
	background-color: #fff;
	height: 200px;
}

.captcha-container {
	display: flex;
	flex-direction: column;
	padding: 11px 8px 5px;
	margin-top: 25px;
	gap: 7px;
	border-radius: 3px;
	border: 1px solid rgba(211, 211, 211, 1);
	background-color: #f9f9f9;
	width: 302px;
	box-shadow: 0px 0px 4px 1px rgba(0, 0, 0, 0.08);
}

.captcha-item {
	display: flex;
	gap: 5px;
	justify-content: space-between;
	padding: 0 2px;
}

.captcha-logo {
	width: 38px;
	aspect-ratio: 1.27;
}

.recaptcha-logo-container {
	display: flex;
	flex-direction: column;
	text-align: center;
}

.recaptcha-logo {
	width: 32px;
	aspect-ratio: 1;
	align-self: center;
}

.captcha-privacy-container {
	display: flex;
	flex-direction: column;
	justify-content: flex-end;
	overflow: hidden;
	align-self: center;
	position: relative;
	gap: 5px;
	padding: 3px 0 3px 80px;
	font-size: 8px;
	text-align: right;
	aspect-ratio: 21.92;
}

.captcha-bg {
	position: absolute;
	inset: 0;
	height: 100%;
	width: 100%;
	object-fit: cover;
}

.captcha-text {
	position: relative;
	color: #555;
}

.captcha-links {
	position: relative;
	display: flex;
	gap: 1px;
}

.captcha-divider {
	color: #000;
	margin: auto 0;
}

.submit-btn {
	margin-top: 25px;
	padding: 7px 17px;
	background-color: #000;
	color: #fff;
	font: 13px/108% Arial, sans-serif;
	letter-spacing: 0.5px;
	text-align: center;
	justify-content: center;
}

.common-card-div {
	margin-top: 58px;
	font: 700 19px/73% Pretendard, sans-serif;
	letter-spacing: 0.6px;
	color: #000;
}

.common-card-text {
	margin-top: 39px;
	font: 500 15px/27px Pretendard, sans-serif;
	letter-spacing: 0.2px;
	color: #000;
}

.mid-line {
	background-color: rgba(0, 0, 0, 1);
	border-style: solid;
	width: 1.5px;
	height: 900px;
	z-index: 100;
	margin-top: 50px;
}

@media ( max-width : 991px) {
	.mid-line {
		display: none;
	}
}

.address-section {
	display: flex;
	flex-direction: column;
	width: 100%;
	margin-left: 30px;
}

@media ( max-width : 991px) {
	.address-section {
		margin-top: 15px;
		margin-left: 0;
	}
}

.address-text {
	margin-top: 25px;
	font: 500 15px/27px Pretendard, sans-serif;
	letter-spacing: 0.2px;
	color: #000;
}

@media ( max-width : 991px) {
	.address-text {
		max-width: 90%;
	}
}

.map_wrap {
	display: flex;
	margin-top: 45px;
	background-color: #808080;
	justify-content: center;
	width: 500px;
	height: 500px;
}

@media ( max-width : 991px) {
	.map_wrap {
		max-width: 86%;
		max-height: 70%;
	}
}

.address-image {
	width: 100%;
	aspect-ratio: 1.25;
}

.to-way {
	margin-top: 31px;
	font: 700 19px/73% Pretendard, sans-serif;
	letter-spacing: 0.6px;
	color: #000;
}

.instructions {
	margin-top: 22px;
	font: 500 15px/27px Pretendard, sans-serif;
	letter-spacing: 0.2px;
	color: #000;
}

.recruit-div {
	margin-top: 109px;
	font: 700 19px/73% Pretendard, sans-serif;
	letter-spacing: 0.6px;
	color: #000;
}

.recruit-text {
	margin-top: 25px;
	font: 500 15px/27px Pretendard, sans-serif;
	letter-spacing: 0.2px;
	color: #000;
}

/* 지도 관련 스타일*/
#map {
	width: 100%;
	height: 100%;
}
</style>

<div class="contact-container">
	<section class="contact-wrapper">
		<div class="heading-lg-contact">CONTACT US</div>
		<div class="section-box">
			<section class="section contact-section">
				<div class="flex-container">
					<form class="flex-column card gform" method="POST"
						data-email="woodkimm23@gmail.com"
						action="https://script.google.com/macros/s/AKfycbzmIUxKuQJAbW2RPu9dlvtsUFAofB3arUc27o_y_LYck9L_gsMC2O6NPORSr5O8bYjc/exec">
						<div class="contact-text-bold">Contact Us</div>
						<p class="text-regular">
							프리온과 연결되는 순간, 고객님의 아이디어는 우리의 도전이 됩니다.
							<br />
							프리온과 함께 하는 순간, 특별한 성공의 여정이 시작됩니다.
						</p>
						<div class="form-group">
							<div>
								<label for="name-input">이름</label>
								<span class="required">*</span>
							</div>
							<div style="margin-left: 110px;">
								<label for="email-input">이메일</label>
								<span class="required">*</span>
							</div>
						</div>
						<div class="form-row">
							<input type="text" id="name-input" class="input-box"
								style="padding-left: 5px;" placeholder="성함을 입력해주세요."
								aria-label="성함을 입력해주세요." name="name" autocomplete='off' />
							<input style="padding-left: 5px;" type="email" id="email-input"
								class="input-box" autocomplete="off" type="text"
								placeholder="id@email.com" name="email"
								placeholder="E-mail을 입력해주세요." aria-label="E-mail을 입력해주세요." />
						</div>

						<div class="contact-info">
							<div>
								<label for="contact-input">연락처</label>
								<span class="required">*</span>
							</div>
							<input style="padding-left: 5px;" type="tel" id="contact-input"
								class="input-box" placeholder="연락처를 입력해주세요." type="text"
								name="contact" autocomplete='off' />
						</div>
						<div class="contact-info">
							<div>
								<label for="inquiry-textarea">문의하기</label>
								<span class="required">*</span>
							</div>
							<textarea id="inquiry-textarea" class="textarea-box" name="body"
								placeholder="연락처를 입력해주세요."
								style="overflow-y: scroll; resize: none;" autocomplete='off'></textarea>
						</div>

						<button class="submit-btn" id="submitBtn" type="submit">문의하기</button>
					</form>
				</div>
			</section>
			<div class="mid-line"></div>
			<section class="address-section section">
				<div class="contact-text-bold">Address & Map</div>
				<p class="address-text">
					경기도 파주시 소라지로 23 3층 | Tel. 010.7133.4740 |
					<br />
					(이쪽에 이메일 작성해주세요.)
					<br />
					23, Soraji-ro, Paju-si, Gyeonggi-do, Republic of Korea
				</p>
				<div class="map_wrap">
					<div id="map"></div>
				</div>
				<div class="to-way">To Way</div>
				<p class="instructions">
					(가까운 역 또는 정류장을 통해 오시는 길을 작성해주세요.)
					<br />
					(가까운 역 또는 정류장을 통해 오시는 길을 작성해주세요.)
					<br />
					(가까운 역 또는 정류장을 통해 오시는 길을 작성해주세요.)
					<br />
					(가까운 역 또는 정류장을 통해 오시는 길을 작성해주세요.)
				</p>
			</section>
		</div>
	</section>
</div>

<!-- services 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9f610802a768fc42d433742c899be05d&libraries=services"></script>
<script data-cfasync="false" type="text/javascript"
	src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script>
<script>
	// 마커를 담을 배열입니다
	var markers = [];

	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center : new kakao.maps.LatLng(37.733172, 126.708343), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);
	var markerPosition = new kakao.maps.LatLng(37.733172, 126.708343);
	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
		position : markerPosition
	});
	marker.setMap(map);
	// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
	function addMarker(position, idx, title) {
		var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
		imgOptions = {
			spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
			spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
			offset : new kakao.maps.Point(13, 37)
		// 마커 좌표에 일치시킬 이미지 내에서의 좌표
		}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imgOptions), marker = new kakao.maps.Marker({
			position : position, // 마커의 위치
			image : markerImage
		});

		marker.setMap(map); // 지도 위에 마커를 표출합니다
		markers.push(marker); // 배열에 생성된 마커를 추가합니다

		return marker;
	}

	// 지도 위에 표시되고 있는 마커를 모두 제거합니다
	function removeMarker() {
		for (var i = 0; i < markers.length; i++) {
			markers[i].setMap(null);
		}
		markers = [];
	}

	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
	function displayPagination(pagination) {
		var paginationEl = document.getElementById('pagination'), fragment = document
				.createDocumentFragment(), i;

		// 기존에 추가된 페이지번호를 삭제합니다
		while (paginationEl.hasChildNodes()) {
			paginationEl.removeChild(paginationEl.lastChild);
		}

		for (i = 1; i <= pagination.last; i++) {
			var el = document.createElement('a');
			el.href = "#";
			el.innerHTML = i;

			if (i === pagination.current) {
				el.className = 'on';
			} else {
				el.onclick = (function(i) {
					return function() {
						pagination.gotoPage(i);
					}
				})(i);
			}

			fragment.appendChild(el);
		}
		paginationEl.appendChild(fragment);
	}

	// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
	// 인포윈도우에 장소명을 표시합니다
	function displayInfowindow(marker, title) {
		var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

		infowindow.setContent(content);
		infowindow.open(map, marker);
	}

	// 검색결과 목록의 자식 Element를 제거하는 함수입니다
	function removeAllChildNods(el) {
		while (el.hasChildNodes()) {
			el.removeChild(el.lastChild);
		}
	}
</script>

<script>
	document.querySelector(".gform").addEventListener("submit",
			function(event) {
				var checkbox = document.getElementById("checkbox");
				// 이메일 전송 알림
				setTimeout(function() {
					alert("이메일이 성공적으로 전송되었습니다!");
					document.getElementById("submitBtn").disabled = false; // 문의하기 버튼 활성화
					document.getElementById("backBtn").disabled = false; // 뒤로가기 버튼 활성화
				}, 100); // 1초 후에 알림을 표시합니다.

			});
</script>

<%@ include file="../common/foot.jspf"%>