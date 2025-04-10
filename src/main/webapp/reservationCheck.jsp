<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=480, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>RE:JOY - 센터 목록</title>
<style>
html, body {
	font-family: 'Pretendard', sans-serif;
	height: auto;
	margin: 0;
	padding: 0;
}

body {
	font-family: 'Pretendard', sans-serif;
	background-color: #f3f4f6;
	text-align: center;
	width: 600px;
	margin: 0 auto;
	min-height: 100vh;
	border: 1px solid #ccc;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
}

header {
	background-color: #495DDD;
	color: white;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 1rem;
	position: relative;
}

.menu-container {
	position: relative;
}

.menu-icon {
	cursor: pointer;
	font-size: 24px;
	padding: 10px;
	z-index: 1000;
}

.nav-menu {
	position: fixed;
	top: 0;
	left: -250px;
	width: 250px;
	height: 100%;
	background-color: #495DDD;
	padding-top: 60px;
	transition: left 0.3s ease-in-out;
	box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
	z-index: 999;
}

.close-btn {
	position: absolute;
	top: 10px;
	right: 10px;
	color: white;
	font-size: 24px;
	cursor: pointer;
	user-select: none;
}

.nav-menu a {
	display: block;
	color: white;
	padding: 15px;
	text-decoration: none;
	font-size: 16px;
	text-align: left;
}

.nav-menu a:hover {
	background-color: #637AFF;
	border-radius: 5px;
}

.nav-menu.show-menu {
	left: 0;
}

.container {
	padding: 20px;
	flex: 1;
}

.info-box {
	background: white;
	padding: 15px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
	margin-bottom: 15px;
	text-align: left;
}

.info-box h2 {
	margin: 0;
	font-size: 18px;
	font-weight: bold;
}

.info-box p {
	margin: 5px 0;
	color: #333;
}

.section-title {
	font-size: 18px;
	font-weight: bold;
	margin: 10px 0;
	display: flex;
	align-items: center;
	gap: 8px;
}

.section-title img {
	width: 20px;
	height: 20px;
}

.date-selector {
	display: flex;
	justify-content: center;
	background: white;
	padding: 10px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
}

.date-selector input {
	font-size: 16px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 100%;
	max-width: 200px;
}

.time-selector {
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	gap: 10px;
	background: white;
	padding: 15px;
	border-radius: 10px;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
}

.time-selector button {
	padding: 10px;
	font-size: 16px;
	border: none;
	border-radius: 5px;
	background-color: #e0e0e0;
	cursor: pointer;
}

.time-selector button.active {
	background-color: #3b4db4;
	color: white;
}

.confirm-btn {
	margin-top: 20px;
	padding: 15px;
	width: 100%;
	background-color: #495DDD;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.cancel-btn {
	margin-top: 10px;
	margin-left : 330px;
	padding: 10px;
	width: 100%;
	background-color: #d9534f;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 14px;
	cursor: pointer;
}

.clickable {
	cursor: pointer;
}

.cancel-btn {
	display: inline-block;
	font-family: 'Pretendard', sans-serif;
	font-size: 16px;
	width : 200px;
	padding: 12px 24px;
	background: linear-gradient(45deg, #ff6f61, #d9534f);
	border: none;
	border-radius: 8px;
	color: #fff;
	cursor: pointer;
	transition: transform 0.3s, box-shadow 0.3s;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}

.cancel-btn:hover {
	transform: translateY(-2px);
	box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
}

.cancel-btn:active {
	transform: translateY(0);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}
</style>
<script>
        function toggleMenu() {
            var menu = document.getElementById("navMenu");
            menu.classList.toggle("show-menu");
        }
</script>
</head>
<body>
	<script type="text/javascript">
        document.addEventListener("DOMContentLoaded", function() {
            // getReservationAll();  // 예약 내역 불러오기 함수 (필요 시 구현)
        });
    </script>
	<header>
		<div class="menu-container">
			<div class="menu-icon" onclick="toggleMenu()">&#9776;</div>
			<nav id="navMenu" class="nav-menu">
				<span class="close-btn" onclick="toggleMenu()">&#10005;</span> <a
					href="center?city=서울시&district=강남구&category=골프">홈</a> <a
					href="reservationCheck">예약조회</a> <a href="dashboard.jsp">통계</a>
			</nav>
		</div>
		<h1 class="clickable"
			onclick="window.location.href='center?city=서울시&district=강남구&category=골프';">RE:JOY</h1>
		<div>
			<% if ((String) session.getAttribute("userId") == null) { %>
			<a href="login.jsp" style="color: white; text-decoration: none;">로그인</a>
			<% } else { %>
			<a href="userLogout" style="color: white; text-decoration: none;">로그아웃</a>
			<% } %>
		</div>
	</header>
	<div class="container">
		<h2
			style="text-align: left; font-size: 22px; margin-left: 20px; margin-bottom: 35px;">예약
			조회</h2>
		<!-- 예약 내역 출력 영역 -->
		<div id="reservation-list">
			<c:if test="${empty reservationList}">
				<p>예약 정보가 없습니다.</p>
			</c:if>

			<c:forEach var="reservation" items="${reservationList}">
				<div class="info-box">
					<h2>
						<strong>${reservation.center_name}</strong> /
						${reservation.center_address}
					</h2>
					<p>
						<strong>예약 날짜:</strong> ${reservation.schedule_date}
					</p>
					<p>
						<strong>예약 시간:</strong> ${reservation.start_time}:00
					</p>
					<p>
						<strong>결제 금액:</strong> ${reservation.price}원
					</p>
					<hr>
				    <form action="reservationCancel" method="post" onsubmit="return confirm('예약을 취소하시겠습니까?');">
				        <input type="hidden" name="reservation_id" value="${reservation.reservation_id}">
				        <button type="submit" class="cancel-btn">예약 취소</button>
				    </form>				
    	</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>
