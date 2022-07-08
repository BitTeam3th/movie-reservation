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
		query = query + title + " " + month + "월 " + day + "일 상영시간표";
		Document doc = Jsoup.connect(query).get();
		/*
		  <div class="box-contents">
			<a href="/movies/detail-view/?midx=85999">
				<strong class="title">토르-러브 앤 썬더</strong>
			</a>	
			
			<div class="score">
            	<strong class="percent">예매율
            		<span>66.2%</span>
            	</strong>
		 */
		
		Elements theaters = doc.select("div.lr_c_fcb div.lr_c_tmt a.vk_bk");
		
		Elements times = doc.select("div.lr_c_fcb div.lr_c_fcc");
		
		System.out.println(theaters.size());
		
		for (int i = 0; i < theaters.size(); i++) {
			if (theaters.get(i).text().substring(0, 5).equals("롯데시네마")) {
				System.out.println(theaters.get(i).text());
				System.out.println(times.get(i).text());
				String[] movietimes = times.get(i).text().split(" ");
				for (int j = 0; j < movietimes.length; j++) {
					System.out.println(movietimes[j]);
				}
				
			}
		}
		
		/*
		 * for (int i = 0; i < 19; i++) { Element title = titles.get(i); Element percent
		 * = percents.get(i);
		 * 
		 * System.out.println(title.text()); System.out.println(percent.text()); }
		 */
	}
}






