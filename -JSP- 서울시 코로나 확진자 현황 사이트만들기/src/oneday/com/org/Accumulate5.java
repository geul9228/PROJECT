package oneday.com.org;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class Accumulate5 {
	private String number3;
			
	
	public Accumulate5() {
		Document doc;
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "before");
			number3 = el.get(0).text().substring(4);
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	public String getNumber() {
		return number3;
	}
	
//	public static void main(String args[]) throws IOException{
//		Document doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
//		Elements el = doc.getElementsByAttributeValue("class", "before");
//		System.out.println(el);
//	}
}
