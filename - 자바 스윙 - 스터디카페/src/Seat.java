

import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JRadioButton;
import javax.swing.plaf.basic.BasicBorders.RadioButtonBorder;

public class Seat {
	int k = 0;
	static int[] seat = new int[22];
	static int seatnum;
	int[] seatArr = new int[22];
	public static Action ml = new Action();
	int inum = 0;
	private Connection conn; // DB 연결 객체
	private PreparedStatement pstmt; // Query 작성 객체
	private ResultSet rs; // Query 결과 커서
	private JButton[] btnN = new JButton[21];

	public Seat(String ID) {
		// public static void main(String[] args) {

		for (int i = 0; i < 21; i++) {
			seat[i] = i + 1;
		}

		
		JFrame jf = new JFrame("좌석 배치표");
		conn = DB.getConnection();

		jf.setTitle("좌석 배치표");
		jf.setSize(600, 600);
		jf.setLocationRelativeTo(null);
		jf.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		jf.setLayout(null);
		
		btnN[1] = new JButton("1");
		btnN[1].setBounds(12, 22, 80, 44);
		btnN[1].addActionListener(ml);
		jf.add(btnN[1]);

		btnN[2] = new JButton("2");
		btnN[2].addActionListener(ml);
		btnN[2].setBounds(115, 22, 80, 44);
		jf.add(btnN[2]);

		btnN[3] = new JButton("3");
		btnN[3].addActionListener(ml);
		btnN[3].setBounds(216, 22, 80, 44);
		jf.add(btnN[3]);

		btnN[4] = new JButton("4");
		btnN[4].addActionListener(ml);
		btnN[4].setBounds(316, 22, 80, 44);
		jf.add(btnN[4]);

		btnN[5] = new JButton("5");
		btnN[5].setBounds(408, 22, 80, 44);
		jf.add(btnN[5]);
		btnN[5].addActionListener(ml);

		btnN[6] = new JButton("6");
		btnN[6].setBounds(500, 22, 80, 44);
		jf.add(btnN[6]);
		btnN[6].addActionListener(ml);

		btnN[7] = new JButton("7");
		btnN[7].setBounds(12, 76, 80, 44);
		jf.add(btnN[7]);
		btnN[7].addActionListener(ml);

		btnN[8] = new JButton("8");
		btnN[8].setBounds(149, 103, 80, 44);
		jf.add(btnN[8]);
		btnN[8].addActionListener(ml);

		btnN[9] = new JButton("9");
		btnN[9].setBounds(241, 103, 80, 44);
		jf.add(btnN[9]);
		btnN[9].addActionListener(ml);

		btnN[10] = new JButton("10");
		btnN[10].setBounds(333, 103, 80, 44);
		jf.add(btnN[10]);
		btnN[10].addActionListener(ml);

		btnN[11] = new JButton("11");
		btnN[11].setBounds(500, 76, 80, 44);
		jf.add(btnN[11]);
		btnN[11].addActionListener(ml);

		btnN[12] = new JButton("12");
		btnN[12].setBounds(12, 135, 80, 44);
		jf.add(btnN[12]);
		btnN[12].addActionListener(ml);

		btnN[13] = new JButton("13");
		btnN[13].setBounds(500, 130, 80, 44);
		jf.add(btnN[13]);
		btnN[13].addActionListener(ml);

		btnN[14] = new JButton("14");
		btnN[14].setBounds(12, 189, 80, 44);
		jf.add(btnN[14]);
		btnN[14].addActionListener(ml);

		btnN[15] = new JButton("15");
		btnN[15].setBounds(149, 157, 80, 44);
		jf.add(btnN[15]);
		btnN[15].addActionListener(ml);

		btnN[16] = new JButton("16");
		btnN[16].setBounds(241, 157, 80, 44);
		jf.add(btnN[16]);
		btnN[16].addActionListener(ml);

		btnN[17] = new JButton("17");
		btnN[17].setBounds(333, 157, 80, 44);
		jf.add(btnN[17]);
		btnN[17].addActionListener(ml);

		btnN[18] = new JButton("18");
		btnN[18].setBounds(500, 184, 80, 44);
		jf.add(btnN[18]);
		btnN[18].addActionListener(ml);

		btnN[19] = new JButton("19");
		btnN[19].setBounds(12, 243, 80, 44);
		jf.add(btnN[19]);
		btnN[19].addActionListener(ml);

		btnN[20] = new JButton("20");
		btnN[20].setBounds(500, 238, 80, 44);
		jf.add(btnN[20]);
		btnN[20].addActionListener(ml);

		JButton btnOK = new JButton("확인");
		btnOK.setBounds(483, 462, 97, 35);
		jf.add(btnOK);
		
		
		try {

			conn = DB.getConnection();
			pstmt = conn.prepareStatement("select SEAT from TIMEMANAGER");
			rs = pstmt.executeQuery();
			while (rs.next()) {

				seatArr[inum] = rs.getInt("SEAT");
				System.out.println(seatArr[inum]);
				inum++;

			}
			
			for (int i = 0; i < seat.length; i++) {

				for (int j = 0; j < seatArr.length; j++) {
					if (seatArr[j] != 0) {
						if (seat[i] == seatArr[j]) {
							System.out.println(seatArr[j]);
							btnN[seatArr[j]].setBackground(Color.red);
							btnN[seatArr[j]].setEnabled(false);
						}
					}
				}
			}

		} catch (Exception e) {

		}
		
		

		btnOK.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					conn.setAutoCommit(false);
					pstmt = conn.prepareStatement("update timemanager set seat = ? where ID  = ?");
					pstmt.setInt(1, Action.num);
					pstmt.setString(2, ID);
					pstmt.executeUpdate();
					pstmt.close();
					conn.commit();

					pstmt = conn.prepareStatement("update timemanager set time1 = systimestamp where ID  = ?");
					pstmt.setString(1, ID);
					pstmt.executeUpdate();
					pstmt.close();
					conn.commit();
					jf.dispose();

				} catch (SQLException e1) {

					e1.printStackTrace();
				}

			}

		});

		JButton btnBack = new JButton("취소");
		btnBack.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				jf.dispose();
			}
		});
		btnBack.setBounds(483, 417, 97, 35);
		jf.add(btnBack);

		jf.setVisible(true);
	}
}