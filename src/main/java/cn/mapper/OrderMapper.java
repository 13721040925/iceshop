package cn.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.pojo.Order;

public interface OrderMapper {

	@Insert(" insert into `order` (pay_id,userphone,paytype,ordercount,shopname,shopprice,orderprice,usersay,ordertime,orderstatus,shopid) values (#{pay_id},#{userphone},#{paytype},#{ordercount},#{shopname},#{shopprice},#{orderprice},#{usersay},#{ordertime},#{orderstatus},#{shopid}) ")
	int createOrder(Order order);

	@Select(" select * from `order` ")
	List<Order> getOrders();

	@Select(" select * from `order` where pay_id=#{pay_id} ")
	Order getOrderByPay_id(@Param("pay_id") String pay_id);

	int updateOrder(Order order);

	@Select(" select * from `order` where userphone=#{userphone} order by id desc ")
	List<Order> getOrderByPhone(@Param("userphone") String userphone);
}
