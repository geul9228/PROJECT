
import java.util.Vector;

import javax.swing.JTable;
import javax.swing.table.DefaultTableCellRenderer;
import javax.swing.table.TableModel;


public class List {
	
	public static Vector<String> getMemberName(){
		//칼럼 데이터 , 여기에서 컬럼을 추가함
		Vector<String> memberName = new Vector<>();
		memberName.add("ID");
		memberName.add("이름");
		memberName.add("전화번호");
		memberName.add("남은시간");
		
		return memberName;
	}
	
	public static Vector<Member> getMembers(){
		//Member 데이터
		Vector<Member> members = new Vector<>();
		


		return members;
	}
}


