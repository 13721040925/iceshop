package cn.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.mapper.ShopMapper;
import cn.pojo.Shop;

@Service("shopService")
@Transactional(propagation = Propagation.REQUIRED, timeout = -1)
public class ShopServiceImpl implements ShopService {
	@Resource
	private ShopMapper mapper;

	@Override
	public List<Shop> getShopList() {
		// TODO Auto-generated method stub
		return mapper.getShopList();
	}

	@Override
	public Shop getShopDetails(Integer id) {
		// TODO Auto-generated method stub
		return mapper.getShopDetails(id);
	}


	@Override
	public int updateShop(Shop shop) {
		// TODO Auto-generated method stub
		return mapper.updateShop(shop);
	}

}
