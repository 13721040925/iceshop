package cn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.pojo.Shop;

public interface ShopMapper {
	@Select(" select * from shop ")
	List<Shop> getShopList();

	@Select(" select * from shop where id=#{id} ")
	Shop getShopDetails(Integer id);

	int updateShop(Shop shop);
}
