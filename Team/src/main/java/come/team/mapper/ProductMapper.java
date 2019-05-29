package come.team.mapper;

import java.util.List;

import come.team.domain.Criteria;
import come.team.domain.ProductVO;

public interface ProductMapper {
	
	List<ProductVO> findPagingList(Criteria criteria); //페이징해서 제품 찾기
	List<ProductVO> findByCategory(Criteria criteria, String productType); //카테고리 별로 제품 찾기
	List<ProductVO> findByKeyword(Criteria criteria, String keyword); //키워드로 제품 찾기
	ProductVO findOneWithProductCode(String productCode); //코드로 제품 찾기
	int countAll(Criteria criteria); //전체 상품 개수 구하기

}
