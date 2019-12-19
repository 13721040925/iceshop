package cn.util;

public class Commons {
	private static char[] ch = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', //
			'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', //
			'r', 's', 't', 'u', 'v', 'w', 'y', 'z', //
			'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', //
			'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', //
			'R', 'S', 'T', 'U', 'V', 'W', 'Y', 'Z', 'X', 'x', //
			'0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };

	public static String getPay_id(String phone, String shopid, Integer ordercount) {
		StringBuffer pay_id = new StringBuffer();
		pay_id.append("ICE_");
		pay_id.append(phone);
		pay_id.append("_");
		pay_id.append(shopid);
		pay_id.append("_");
		pay_id.append(ordercount);
		pay_id.append("_");
		int num = (int) (Math.random() * (11 - 5 + 1)) + 5;// [5,11]
		String str = "";
		for (int i = 0; i < num; i++) {
			pay_id.append(ch[(int) (Math.random() * 62)]);
		}
		return pay_id.toString();
	}
}
