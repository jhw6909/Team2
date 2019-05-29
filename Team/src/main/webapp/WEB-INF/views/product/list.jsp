<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>

	<!-- section -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- section-title -->
				<div class="col-md-12">
					<div class="section-title">
						<h2 class="title">PRODUCT</h2>
					</div>
				</div>
				<!-- /section-title -->

				<!-- Product Slick -->
				<div class="col-md-9 col-sm-6 col-xs-6">
					<div class="row">
						<div id="product-slick-1" class="product-slick">
							
							<!-- Product Single -->
								<div class="product product-single">
									<div class="product-thumb">
										<div class="product-label">
											<span>NT950SBV-A58A</span> <!-- 제품 코드 넣기 -->
										</div>								
										<button class="main-btn quick-view"><i class="fa fa-search-plus"></i> Quick view</button>
										<img src="../../../resources/img/product07.jpg" alt="">
									</div>
									<div class="product-body">
										<h3 class="product-price">$32.50 <del class="product-old-price">$45.00</del></h3>
										<h2 class="product-name"><a href="#">Product Name Goes Here</a></h2>
										<div class="product-btns">
											<button class="primary-btn add-to-cart"><i class="fa fa-shopping-cart"></i> Add to Cart</button>
										</div>
									</div>
								</div>
							<!-- /Product Single -->

						</div>
					</div>
				</div>
				<!-- /Product Slick -->
			</div>
			<!-- /row -->
			
					<div class="pull-right">
						<ul class="pagination">
						
							<c:if test="${pageMaker.prev }">
								<li class="paginate_button previous"><a href="${pageMaker.startPage - 1 }">Previous</a></li>
							</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
							<!-- 현재 페이지에 강조 표시를 해준다.(현재 페이지: active, 그외: 빈칸) -->
							<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""} ">
								<a href="${num}">${num}</a>
							</li>
						</c:forEach>
							
							<c:if test="${pageMaker.next }">
								<li class="paginate_button next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
							</c:if>
						</ul>
					</div> 
					
					<form id="actionForm" action="/board/list" method="get">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
						<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type }'/>">
						<input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword }'/>">
					</form>
		</div>
		<!-- /container -->
	</div>
	<!-- /section -->
<%@include file="../includes/footer.jsp"%>