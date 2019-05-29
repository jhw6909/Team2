package come.team.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import come.team.domain.Criteria;
import come.team.domain.ProductVO;
import come.team.mapper.ProductMapper;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;
	
	@Override
	public List<ProductVO> findPagingList(Criteria criteria) {
		log.info("get list with criteria : " + criteria);
		return mapper.findPagingList(criteria);
	}

	@Override
	public List<ProductVO> findByCategory(Criteria criteria, String productType) {
		return mapper.findByCategory(criteria, productType);
	}

	@Override
	public List<ProductVO> findByKeyword(Criteria criteria, String keyword) {
		return mapper.findByKeyword(criteria, keyword);
	}

	@Override
	public ProductVO findOneWithProductCode(String productCode) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countAll(Criteria criteria) {
		return mapper.countAll(criteria);
	}

}
