package com.earthpurging.chellenge.model.vo;

public class Chellenge {
	private int questNO; //퀘스트번호
	private String questArea; //퀘스트지역
	private int questCan; //캔개수
	private int questPla; //플라스틱 개수
	private int questGlass; //병개수
	private int questPaper; //종이 개수
	private int questWrapper; //비닐 개수
	private int questTabacoo; //담배꽁초 개수
	private int questPoint; //퀘스트 점수
	private int questDate; //퀘스트 등록 날짜
	private String Photopath; //사진 올라간 경로
	private char Permission; // 포인트 승인 여부 (y/n)
	private String memberThink; //동료들에게 남길 한마디
	public Chellenge() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Chellenge(int questNO, String questArea, int questCan, int questPla, int questGlass, int questPaper,
			int questWrapper, int questTabacoo, int questPoint, int questDate, String photopath, char permission,
			String memberThink) {
		super();
		this.questNO = questNO;
		this.questArea = questArea;
		this.questCan = questCan;
		this.questPla = questPla;
		this.questGlass = questGlass;
		this.questPaper = questPaper;
		this.questWrapper = questWrapper;
		this.questTabacoo = questTabacoo;
		this.questPoint = questPoint;
		this.questDate = questDate;
		Photopath = photopath;
		Permission = permission;
		this.memberThink = memberThink;
	}
	public int getQuestNO() {
		return questNO;
	}
	public void setQuestNO(int questNO) {
		this.questNO = questNO;
	}
	public String getQuestArea() {
		return questArea;
	}
	public void setQuestArea(String questArea) {
		this.questArea = questArea;
	}
	public int getQuestCan() {
		return questCan;
	}
	public void setQuestCan(int questCan) {
		this.questCan = questCan;
	}
	public int getQuestPla() {
		return questPla;
	}
	public void setQuestPla(int questPla) {
		this.questPla = questPla;
	}
	public int getQuestGlass() {
		return questGlass;
	}
	public void setQuestGlass(int questGlass) {
		this.questGlass = questGlass;
	}
	public int getQuestPaper() {
		return questPaper;
	}
	public void setQuestPaper(int questPaper) {
		this.questPaper = questPaper;
	}
	public int getQuestWrapper() {
		return questWrapper;
	}
	public void setQuestWrapper(int questWrapper) {
		this.questWrapper = questWrapper;
	}
	public int getQuestTabacoo() {
		return questTabacoo;
	}
	public void setQuestTabacoo(int questTabacoo) {
		this.questTabacoo = questTabacoo;
	}
	public int getQuestPoint() {
		return questPoint;
	}
	public void setQuestPoint(int questPoint) {
		this.questPoint = questPoint;
	}
	public int getQuestDate() {
		return questDate;
	}
	public void setQuestDate(int questDate) {
		this.questDate = questDate;
	}
	public String getPhotopath() {
		return Photopath;
	}
	public void setPhotopath(String photopath) {
		Photopath = photopath;
	}
	public char getPermission() {
		return Permission;
	}
	public void setPermission(char permission) {
		Permission = permission;
	}
	public String getMemberThink() {
		return memberThink;
	}
	public void setMemberThink(String memberThink) {
		this.memberThink = memberThink;
	}
	
	
}
