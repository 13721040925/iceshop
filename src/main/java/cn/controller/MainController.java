package cn.controller;

import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections4.map.HashedMap;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import cn.pojo.Lunbo;
import cn.pojo.Order;
import cn.pojo.Shop;
import cn.pojo.Warn;
import cn.service.LunboService;
import cn.service.OrderService;
import cn.service.ShopService;
import cn.service.WarnService;
import cn.util.Commons;
import cn.util.DateUtil;


@Controller
@RequestMapping("/ice")
public class MainController {
	@Resource
	private ShopService shopService;
	@Resource
	private OrderService orderService;
	@Resource
	private WarnService warnService;
	@Resource
	private LunboService lunboService;

	private static Map<String, String> map = new HashedMap<String, String>();
	private static HashSet hs = new HashSet();

	@RequestMapping("/towelcome")
	public ModelAndView towelcome(ModelAndView md) {
		List<Shop> list = shopService.getShopList();
		md.addObject("list", list);
		List<Lunbo> lunbos = lunboService.getLunbos();
		md.addObject("lunbos", lunbos);
		md.setViewName("welcome");// 转发
		return md;
	}

	@RequestMapping("/topcwelcome")
	public ModelAndView topcwelcome(ModelAndView md) {
		List<Shop> list = shopService.getShopList();
		md.addObject("list", list);
		List<Lunbo> lunbos = lunboService.getLunbos();
		md.addObject("lunbos", lunbos);
		md.setViewName("pcwelcome");// 转发
		return md;
	}
	@RequestMapping("/todetails")
	public ModelAndView todetails(ModelAndView md, @RequestParam(name = "id") Integer id) {
		Shop shop = shopService.getShopDetails(id);
		md.addObject("shop", shop);
		md.setViewName("details");// 转发
		return md;
	}

	@RequestMapping("/totel")
	public ModelAndView totel(ModelAndView md, @RequestParam(name = "id") Integer id) {
		Shop shop = shopService.getShopDetails(id);
		md.addObject("shop", shop);
		Warn warn = warnService.getWarn();
		md.addObject("warn", warn);
		md.setViewName("tel");// 转发
		return md;
	}

	@RequestMapping("/topay")
	public ModelAndView topay(ModelAndView md, HttpServletRequest request,
			@RequestParam(name = "id", required = false) Integer id,
			@RequestParam(name = "phone", required = false) String phone,
			@RequestParam(name = "ordercount", required = false) String ordercount) {
		Shop shop = shopService.getShopDetails(id);
		md.addObject("shop", shop);
		md.addObject("phone", phone);
		md.addObject("ordercount", ordercount);
		md.setViewName("pay");// 转发
		return md;
	}

	@RequestMapping(value = "/createOrder", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String createOrder(
			@RequestParam(name = "paytype", required = false) Integer paytype,
			@RequestParam(name = "usersay", required = false) String usersay,
			@RequestParam(name = "userphone", required = false) String userphone,
			@RequestParam(name = "shopname", required = false) String shopname,
			@RequestParam(name = "shopprice", required = false) Double shopprice,
			@RequestParam(name = "ordercount", required = false) Integer ordercount,
			@RequestParam(name = "orderprice", required = false) Double orderprice,
			@RequestParam(name = "shopid", required = false) String shopid, HttpServletRequest request) {
		List<Order> list = orderService.getOrders();
		String pay_id = "";
		boolean fl = true;
		while (fl) {
			pay_id = Commons.getPay_id(userphone, shopid, ordercount);
			boolean flag = true;
			for (Order o : list) {
				if (o.getPay_id().equals(pay_id)) {
					flag = false;
					break;
				}
			}
			if (flag) {
				fl = false;
			}
		}
		// HttpSession session = request.getSession();
		// session.setAttribute(pay_id, pay_id);
		hs.add(pay_id);
		Order order = new Order();
		order.setShopid(Integer.parseInt(shopid));
		order.setPay_id(pay_id);
		order.setPaytype(paytype);
		order.setUsersay(usersay);
		order.setUserphone(userphone);
		order.setShopname(shopname);
		order.setShopprice(shopprice);
		order.setOrdercount(ordercount);
		order.setOrderprice(orderprice);
		order.setOrderstatus(0);
		order.setOrdertime(DateUtil.convertUtilDateToString(new Date()));
		int i = orderService.createOrder(order);
		if (i > 0) {
			return JSON.toJSONString(pay_id);
		}
		return null;
	}

	@RequestMapping("/paysuccess")
	public String paysuccess(@RequestParam(name = "id", required = false) String id,
			@RequestParam(name = "userID", required = false) String userID,
			@RequestParam(name = "pay_no", required = false) String pay_no,
			@RequestParam(name = "pay_id", required = false) String pay_id,
			@RequestParam(name = "price", required = false) String price,
			@RequestParam(name = "param", required = false) String param,
			@RequestParam(name = "status", required = false) String status,
			@RequestParam(name = "trade_no", required = false) String trade_no,
			@RequestParam(name = "endTime", required = false) String endTime,
			@RequestParam(name = "trueID", required = false) String trueID,
			@RequestParam(name = "mode", required = false) String mode,
			@RequestParam(name = "notify_count", required = false) String notify_count,
			@RequestParam(name = "qr_user", required = false) String qr_user,
			@RequestParam(name = "ok", required = false) String ok,
			@RequestParam(name = "type", required = false) Integer type,
			@RequestParam(name = "money", required = false) Double money,
			@RequestParam(name = "pay_time", required = false) String pay_time,
			@RequestParam(name = "tag", required = false) String tag,
			@RequestParam(name = "target", required = false) String target,
			@RequestParam(name = "codepay_server_time", required = false) String codepay_server_time,
			@RequestParam(name = "sign", required = false) String sign, HttpServletRequest request) {
		String arr[] = pay_id.split("_");
		Integer shopid = Integer.parseInt(arr[2]);
		StringBuffer value = new StringBuffer();
		value.append(shopid);
		value.append(",");
		value.append(type);
		value.append(",");
		value.append(money);
		value.append(",");
		value.append(pay_no);
		map.put(pay_id, value.toString());
		// HttpSession session = request.getSession();
		// session.setAttribute("pay_id", pay_id);
		return "success";
	}


	@RequestMapping(value = "/update", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String update(HttpServletRequest request) {
		// HttpSession session = request.getSession();
		// System.out.println(">>>>>>>>>>>>>>>>" + session.getAttribute("pay_id"));
		String pay_id = "";
		Iterator<String> its = map.keySet().iterator();
		while (its.hasNext()) {
			Object key = its.next();
			if (hs.contains(key.toString().substring(1, key.toString().length() - 1))) {
				pay_id = key.toString().substring(1, key.toString().length() - 1);
				break;
			}
		}
		Order order = new Order();
		order.setPay_id(pay_id);
		order = orderService.getOrderByPay_id(pay_id);
		String v = "";
		String k = "";
		Iterator<String> it = map.keySet().iterator();
		while (it.hasNext()) {
			Object key = it.next();
			String val = map.get(key);
			System.out.println("key：" + key.toString() + "，val：" + val);
			if (key.toString().substring(1, key.toString().length() - 1).equals(pay_id)) {
				System.out.println("key.equals(pay_id)");
				v = val;
				k = key.toString();
				break;
			}
		}
		String value[] = v.split(",");
		Integer shopid = Integer.parseInt(value[0]);
		Integer paytype = Integer.parseInt(value[1]);
		Double money = Double.parseDouble(value[2]);
		String pay_no = value[3];
		Shop shop = shopService.getShopDetails(shopid);
		int count = shop.getCount() - order.getOrdercount();
		int salecount = shop.getSalecount() + order.getOrdercount();
		Shop sh = new Shop();
		sh.setCount(count);
		sh.setSalecount(salecount);
		sh.setId(shopid);
		int i = shopService.updateShop(sh);
		order.setPaytype(paytype);
		order.setMoney(money);
		order.setPay_no(pay_no);
		order.setOrderstatus(1);
		order.setPaytime(DateUtil.convertUtilDateToString(new Date()));
		int j = orderService.updateOrder(order);
		if (i > 0 && j > 0) {
			map.remove(k);
			hs.remove(k.substring(1, k.toString().length() - 1));
			return JSON.toJSONString("ok");
		}
		return JSON.toJSONString("no");
	}

	@RequestMapping("/tochecktel")
	public String tochecktel() {
		return "checktel";
	}

	@RequestMapping(value = "/checkphone", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String checkphone(@RequestParam(name = "userphone", required = false) String userphone) {
		List<Order> list = orderService.getOrderByPhone(userphone);
		if (list.size() > 0) {
			return JSON.toJSONString("ok");
		}
		return null;
	}

	@RequestMapping("/selectorder")
	public ModelAndView selectorder(ModelAndView md, @RequestParam(name = "userphone") String userphone) {
		List<Order> list = orderService.getOrderByPhone(userphone);
		for (Order order : list) {
			order.setShop(shopService.getShopDetails(order.getShopid()));
		}
		md.addObject("list", list);
		md.setViewName("myorder");// 转发
		return md;
	}

	@RequestMapping("/toorderdetails")
	public ModelAndView toorderdetails(ModelAndView md, @RequestParam(name = "pay_id") String pay_id) {
		Order order = orderService.getOrderByPay_id(pay_id);
		order.setShop(shopService.getShopDetails(order.getShopid()));
		md.addObject("order", order);
		md.setViewName("orderdetails");// 转发
		return md;
	}
}
