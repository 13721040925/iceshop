package cn.service;

import java.util.List;

import cn.pojo.Shop;

public interface ShopService {
	List<Shop> getShopList();

	Shop getShopDetails(Integer id);

	int updateShop(Shop shop);
}
