package cn.service;

import java.util.List;

import cn.pojo.Order;

public interface OrderService {
	int createOrder(Order order);

	List<Order> getOrders();

	Order getOrderByPay_id(String pay_id);

	int updateOrder(Order order);

	List<Order> getOrderByPhone(String userphone);
}
