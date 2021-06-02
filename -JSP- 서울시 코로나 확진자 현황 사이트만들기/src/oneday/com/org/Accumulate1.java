package oneday.com.org;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class Accumulate1 {
	private String number3;
	Document doc;
	
	public String Accumulate1() {
		
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "num");
			number3 = el.get(0).text().substring(4);
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return number3;
	}
	
	public String Accumulate2() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "num");
			number3 = el.get(1).text();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return number3;		
	}
	
	public String Accumulate3() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "num");
			number3 = el.get(2).text();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return number3;				
	}
	
	public String Accumulate4() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "num");
			number3 = el.get(3).text();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return number3;						
	}
	
	public String Accumulate5() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "before");
			number3 = el.get(0).text().substring(4);
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return number3;		
	}
	
	public String Accumulate6() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "before");
			number3 = el.get(1).text();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return number3;			
	}
	
	public String Accumulate7() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "before");
			number3 = el.get(2).text();
		} catch (IOException e) {
			e.printStackTrace();
		}		
		return number3;		
	}
	
	public String Accumulate8() {
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "before");
			number3 = el.get(3).text();
		} catch (IOException e) {
			e.printStackTrace();
		}	
		return number3;			
	}
	
}
