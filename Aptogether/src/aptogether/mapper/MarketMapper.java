package aptogether.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import aptogether.model.Market_Product;
import aptogether.model.Marketreply;

public interface MarketMapper {


	int insertmarketproduct(Market_Product product);

	int countmarketproduct();

	List<Market_Product> listMarket(RowBounds rowBounds);

	Market_Product detailmarketproduct(int seq);

	int deletemarketproduct(int seq);

	int updatemarketproduct(Market_Product product);

	int insertmarketreply(Marketreply reply);

	List<Marketreply> listmarketreply(int seq);

}
