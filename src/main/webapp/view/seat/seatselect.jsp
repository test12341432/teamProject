<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="com.ssodal.bean.SeatBean" %>
<%@ page import="java.util.*" %>
 <%@ include file="../header/header.jsp"%>

			<article id="article">
				<section id="section_seat">
					<div id="seat_outline">
						<div id="seat_location">
							<div id="seat_lo_box" style="overflow:auto">
								<div id="seat_stage">
									<h3>STAGE</h3>
								</div>
								
								<c:forEach begin="1" end="${m.content_maxline}" step="1" var="line">
									<br/>
									<c:forEach var="row" begin="1" end="${m.content_maxrow}" step="1">
										<input type="checkbox" id="${line}열${row}석" value="${line}열${row}석" onclick="select_seat(this);"<c:forEach var="a" items="${s}">
									<c:if test="${a.select_line == line && a.select_row == row}">disabled</c:if>
								</c:forEach> />${line}열${row}석
								</c:forEach>
								</c:forEach>
							</div>
						</div>
						<div id="seat_detail_Information">
							<div id="info_title">
							<p>제목&nbsp;${m.content_title}</p>
							<p>부제&nbsp;${m.content_subtitle}</p>
							<p>장르&nbsp;${m.content_genre}</p>
							<p>장소&nbsp;${m.content_spot}</p>
							<p>출연진&nbsp;${m.content_cast}</p>
							<p>등급&nbsp;${m.content_rating}세&nbsp;이상&nbsp;관람가</p>
							</div>
							<div id="info_date">
								
							</div>
							<div id="info_book">
							<ul>
								<li>총 좌석 : ${total}</li>
								<li>잔여좌석 : ${remain}</li>
							</ul>
							<span>인원수 선택</span>
							<select id="person">
								<option value="1">1명</option>
								<option value="2">2명</option>
								<option value="3">3명</option>
								<option value="4">4명</option>
							</select>
								<div id="seat_val">
								</div>
								<input type="button" value="예매하기" id="seat_ok" name="sear_ok"/>
							</div>
						</div>
					</div>
				</section>
			</article>
		<footer>
			<jsp:include page="../footer/footer.jsp" flush="true" />
		</footer>
	</body>