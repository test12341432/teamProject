<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="com.ssodal.bean.SeatBean" %>
<%@ page import="java.util.*" %>
 <%@ include file="../header/header.jsp"%>

			<article id="article">
				<section id="section_seat">
					<div id="seat_outline">
						<div id="seat_location">
							<div id="seat_lo_box">
								<div id="seat_stage">
									<h3>STAGE</h3>
								</div>
								
								<c:forEach begin="1" end="${m.content_maxline}" step="1" var="line">
									<br/>
									<c:forEach var="row" begin="1" end="${m.content_maxrow}" step="1">
									<input type="checkbox" value="${line}${row}" <c:forEach var="a" items="${s}">
									<c:if test="${a.select_line == line && a.select_row == row}">checked="checked"</c:if>
								</c:forEach> /> 
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
							<table>
									<tr>
										<th>예약된 좌석</th>
									</tr>
									<c:forEach var="a" items="${s}">
										<tr>
											<td>${a.select_line}열${a.select_row}석</td>
										</tr>
									</c:forEach>
								</table>
							</div>
						</div>
					</div>
				</section>
			</article>
		<footer>
			<jsp:include page="../footer/footer.jsp" flush="true" />
		</footer>
	</body>