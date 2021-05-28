

import java.io.IOException;

public class TimeFunction{
	static int myTime = 0; //잔여시간
	static String timerBuffer; // 잔여 시간 문자열이 저장될 버퍼
	static int oldTime; // 타이머가 ON 되었을 때의 시각을 기억하고 있는 변수
	static int onOff;

	// 정수로 된 시간을 초단위(sec)로 입력 받아, "04:11:15" 등의 형식의 문자열로 시분초를 저장
	public static String secToHHMMSS(int secs) {
		int hour, min, sec;
		sec = secs % 60;
		min = secs / 60 % 60;
		hour = secs / 3600;

		timerBuffer = String.format("%02d:%02d:%02d", hour, min, sec);
		return timerBuffer;
	}
//
//	public static void pause() {
//		try {
//			System.in.read();
//		} catch (IOException e) {
//		}
//	}
//	
	//충전 시간 입력(시간 단위)
	public static int addTime(int i) {
		myTime += i;
		return myTime;
	}
}