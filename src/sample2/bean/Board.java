package sample2.bean;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class Board {
	private int id;
	private String title;
	private String body;
	private String memberId;
	private Timestamp inserted;
	
	public String getTimeAgo() {
		long now = System.currentTimeMillis();
		long inserted = this.inserted.getTime();
		
		long diff = (now - inserted) / 1000; // 1000으로 나누면 초 단위가 된다
		
		if (diff < (60 * 60)) { // 초 단위의 diff가 (60 * 60) -> 즉, 1시간 보다 작으면 
			return (diff / 60) + "분 전"; // diff를 60(1분)으로 나눠서, 분 단위로 표시하고
		} else if (diff < (60 * 60 * 24)) { // diff가 (60 * 60 * 24) -> 즉, (1시간 * 24)인 1일 보다 작으면
			return (diff / (60 * 60)) + "시간 전"; // diff를 (60 * 60)인 1시간으로 나눠서, 시간 단위로 표시하고
		} else {
			return new SimpleDateFormat("yy/MM/dd").format(this.inserted); // 그 외(1일 이상)의 경우는 년/월/일(예를 들어 21/06/04)로 표시함
		}
		
	}
	
	public String getMemberIdHidden() {
		return memberId.substring(0, 1) + "***";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public Timestamp getInserted() {
		return inserted;
	}

	public void setInserted(Timestamp inserted) {
		this.inserted = inserted;
	}

}
