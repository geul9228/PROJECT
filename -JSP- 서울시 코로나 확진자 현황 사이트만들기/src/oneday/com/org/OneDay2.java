package oneday.com.org;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class OneDay2 {
private int number2;
	
	
	public OneDay2() {
		Document doc;
		try {
			doc = Jsoup.connect("http://ncov.mohw.go.kr/").get();
			Elements el = doc.getElementsByAttributeValue("class", "data");
			number2=Integer.parseInt(el.get(1).text());
		} catch (IOException e) {
			e.printStackTrace();
		}		
	}
	public int	getNumber2() {
		return number2;
	}
}
