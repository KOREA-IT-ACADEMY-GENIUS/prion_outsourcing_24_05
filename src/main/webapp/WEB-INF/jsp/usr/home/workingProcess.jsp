<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="Working Process"></c:set>

<%@ include file="../common/head.jspf"%>

<style>
/* 노말라이즈 */
body, ul, li, h1 {
	margin: 0;
	padding: 0;
	list-style: none;
}

.container {
	justify-content: flex-end;
	align-items: center;
	background-color: #fff;
	display: flex;
	flex-direction: column;
	padding: 80px 0;
	max-width: 100%;
}

.hero-section {
	display: flex;
	flex-direction: column;
	overflow: hidden;
	align-items: center;
	justify-content: center;
	position: relative;
	min-height: 699px;
	margin-top: 0;
	width: 100%;
	font-weight: 600;
	text-align: center;
	letter-spacing: -2.4px;
	line-height: 80px;
	justify-content: center;
	background-color: rgba(0, 0, 0, 0.27);
	/* Added directly to the style */
}

@media ( max-width : 991px) {
	.hero-section {
		margin-top: 40px;
		font-size: 40px;
		line-height: 74px;
	}
}

.hero-image {
	position: absolute;
	inset: 0;
	height: 100%;
	width: 100%;
	object-fit: cover;
	object-position: center;
}

.hero-content {
	position: relative;
	font-family: Pretendard, sans-serif;
	width: 100%;
	align-items: center;
	justify-content: center;
	color: #ffffff;
	font-size: 40px;
}

@media ( max-width : 991px) {
	.hero-content {
		font-size: 25px;
		line-height: 50px;
		padding: 40px 20px;
		font-weight: 400;
	}
}

.section-title {
	color: #000;
	text-align: center;
	letter-spacing: -1.26px;
	margin-top: 110px;
	font: 700 42px/150% Pretendard, sans-serif;
}

@media ( max-width : 991px) {
	.section-title {
		margin-top: 40px;
		font-size: 30px;
	}
}

.process-steps {
	display: flex;
	margin-top: 100px;
	width: 1293px;
	max-width: 100%;
	gap: 20px;
	line-height: 150%;
}

@media ( max-width : 991px) {
	.process-steps {
		margin-top: 40px;
		flex-wrap: wrap;
		margin-left: 50px;
	}
}

.step {
	display: flex;
	flex-direction: column;
	flex: 1;
	padding: 0 20px;
}

.step-title {
	color: #4dbf5e;
	letter-spacing: -1.2px;
	font: 700 40px Pretendard, sans-serif;
}

@media ( max-width : 991px) {
	.step-title {
		font-size: 25px;
	}
}

.step-description {
	color: rgba(0, 0, 0, 0.8);
	letter-spacing: -0.72px;
	margin-top: 67px;
	font: 400 24px Play, sans-serif;
}

@media ( max-width : 991px) {
	.step-description {
		margin-top: 10px;
		font-size: 15px;
	}
}

.image-section {
	margin-top: 62px;
	width: 1293px;
	max-width: 100%;
}

@media ( max-width : 991px) {
	.image-section {
		margin-top: 20px;
	}
}

.image-row {
	display: flex;
	gap: 20px;
}

@media ( max-width : 991px) {
	.image-row {
		flex-direction: column;
		align-items: stretch;
		gap: 0;
	}
}

.image-column {
	display: flex;
	flex-direction: column;
	width: 50%;
}

@media ( max-width : 991px) {
	.image-column {
		width: 100%;
	}
}

.img {
	aspect-ratio: 1.49;
	object-fit: cover;
	width: 100%;
}

@media ( max-width : 991px) {
	.img {
		max-width: 90%;
		margin-top: 40px;
		margin-left: auto;
		margin-right: auto;
	}
}

.steps-container {
	margin-top: 229px;
	width: 1293px;
	max-width: 100%;
	gap: 20px;
	display: flex;
	line-height: 150%;
}

@media ( max-width : 991px) {
	.steps-container {
		margin-top: 40px;
		margin-left: 50px;
		flex-wrap: wrap;
	}
}

.sub-step {
	display: flex;
	flex-direction: column;
	flex: 1;
	padding: 0 20px;
}

.sub-step-title {
	color: #4dbf5e;
	letter-spacing: -1.2px;
	font: 700 40px Pretendard, sans-serif;
}

@media ( max-width : 991px) {
	.sub-step-title {
		font-size: 25px;
	}
}

.sub-step-description {
	color: rgba(0, 0, 0, 0.8);
	letter-spacing: -0.72px;
	margin-top: 67px;
	font: 400 24px Play, sans-serif;
}

@media ( max-width : 991px) {
	.sub-step-description {
		margin-top: 10px;
		font-size: 15px;
	}
}

.final-image-section {
	margin-top: 62px;
	width: 1293px;
	max-width: 100%;
}

@media ( max-width : 991px) {
	.final-image-section {
		margin-top: 20px;
	}
}

.final-image-row {
	display: flex;
	gap: 20px;
}

@media ( max-width : 991px) {
	.final-image-row {
		flex-direction: column;
		align-items: stretch;
		gap: 0;
	}
}

.final-image-column {
	display: flex;
	flex-direction: column;
	width: 50%;
}

@media ( max-width : 991px) {
	.final-image-column {
		width: 100%;
	}
}

.final-img {
	aspect-ratio: 1.49;
	object-fit: auto;
	width: 100%;
}

@media ( max-width : 991px) {
	.final-img {
		max-width: 90%;
		margin-top: 40px;
		margin-left: auto;
		margin-right: auto;
	}
}

.progress {
	width: 68%;
	height: 100%
}
</style>


	</head>
	<body>

		<section class="container">
			<section class="hero-section">
				<img loading="lazy"
					src="https://cdn.builder.io/api/v1/image/assets/TEMP/3549847b01ef1c6db8b25c26779c7bb9ae7fa1adf578c5bacce1c00342167d99?apiKey=725f06f0daeb4ab382150ea4b4cf3550&"
					class="hero-image" alt="" />
				<div class="hero-content">
					인쇄 전 공정을 통합 인쇄 솔루션 구축으로<br/> 빠르고 정확한 인쇄 서비스를 제공합니다.<br/>
					물류센터제공, 고객자율 발주 시스템, ERP등<br/> 물류부터 발주, 원가 관리 등<br/> 고객의 시간과
					비용까지 효율적으로 관리합니다.
				</div>
			</section>
			<h2 class="section-title">WORKING PROCESS</h2>

			<img src="https://i.ibb.co/82rgP2F/12.png" alt="image" border="0"
				class="progress"></a>
			<section class="process-steps">
				<div class="step">
					<h3 class="step-title">기획</h3>
					<p class="step-description">기획에 대한 설명을 작성해주세요.</p>
				</div>
				<div class="step">
					<h3 class="step-title">디자인</h3>
					<p class="step-description">디자인에 대한 설명을 작성해주세요.</p>
				</div>
			</section>
			<section class="image-section">
				<div class="image-row">
					<div class="image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="img" alt="설명 이미지 1" />
					</div>
					<div class="image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="img" alt="설명 이미지 2" />
					</div>
				</div>
			</section>
			<section class="steps-container">
				<div class="sub-step">
					<h3 class="sub-step-title">제판</h3>
					<p class="sub-step-description">제판에 대한 설명을 작성해주세요.</p>
				</div>
				<div class="sub-step">
					<h3 class="sub-step-title">인쇄</h3>
					<p class="sub-step-description">인쇄에 대한 설명을 작성해주세요.</p>
				</div>
			</section>
			<section class="image-section">
				<div class="image-row">
					<div class="image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="img" alt="설명 이미지 3" />
					</div>
					<div class="image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="img" alt="설명 이미지 4" />
					</div>
				</div>
			</section>
			<section class="steps-container">
				<div class="sub-step">
					<h3 class="sub-step-title">제본</h3>
					<p class="sub-step-description">제본에 대한 설명을 작성해주세요.</p>
				</div>
				<div class="sub-step">
					<h3 class="sub-step-title">후가공</h3>
					<p class="sub-step-description">후가공에 대한 설명을 작성해주세요.</p>
				</div>
			</section>
			<section class="final-image-section">
				<div class="final-image-row">
					<div class="final-image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="final-img" alt="설명 이미지 5" />
					</div>
					<div class="final-image-column">
						<img loading="lazy"
							src="https://i.ibb.co/4jfypNw/Frame-4.png"
							class="final-img" alt="설명 이미지 6" />
					</div>
				</div>
			</section>
		</section>

	</body>