package cn.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.mapper.OrderMapper;
import cn.pojo.Order;

@Service("orderService")
@Transactional(propagation = Propagation.REQUIRED, timeout = -1)
public class OrderServiceImpl implements OrderService {
	@Resource
	private OrderMapper mapper;
	@Override
	public int createOrder(Order order) {
		// TODO Auto-generated method stub
		return mapper.createOrder(order);
	}

	@Override
	public List<Order> getOrders() {
		// TODO Auto-generated method stub
		return mapper.getOrders();
	}

	@Override
	public Order getOrderByPay_id(String pay_id) {
		// TODO Auto-generated method stub
		return mapper.getOrderByPay_id(pay_id);
	}

	@Override
	public int updateOrder(Order order) {
		// TODO Auto-generated method stub
		return mapper.updateOrder(order);
	}

	@Override
	public List<Order> getOrderByPhone(String userphone) {
		// TODO Auto-generated method stub
		return mapper.getOrderByPhone(userphone);
	}

}
