package controller;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class MainClass {
	public static void main(String[] args) throws Exception {
		String query = "https://www.google.com/search?q=";
		String title = "토르-러브 앤 썬더";
		String month = "07";
		String day = "10";
		query = query + title + " 강남" + month + "월 " + day + "일";
		Document doc = Jsoup.connect(query).get();
		
		Elements theaters = doc.select("div.lr_c_fcb div.lr_c_tmt a.vk_bk");
		
		Elements times = doc.select("div.lr_c_fcb div.lr_c_fcc");
		
		for (int i = 0; i < theaters.size(); i++) {
			if (theaters.get(i).text().substring(0, 5).equals("롯데시네마")) {
				String[] movietimes = times.get(i).text().split(" ");
				for (int j = 0; j < movietimes.length; j++) {
					String check = movietimes[j].substring(0, 2);
					String[] beforetime = movietimes[j].substring(2).split(":");
					String hour = two(ifAfternoon(check, beforetime[0]));
					String minute = two(beforetime[1]);
					System.out.println(theaters.get(i).text() + "2022" + two(month) + two(day) + hour + minute);
				}
				
			}
		}
	}
	
	public static String two(String msg){
		return msg.trim().length() < 2?"0" + msg.trim():msg.trim();
	}
	
	public static String ifAfternoon(String msg, String time){
		if (msg.equals("오후")) {
			return Integer.toString(Integer.parseInt(time) + 12);
		}
		return time;
	}
}




