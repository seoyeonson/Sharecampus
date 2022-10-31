package curriculum.VO;

public class Curri_BookmarkVO {
private int	curri_bookmark_num;
private int	curri_num;
private int	member_num;

public Curri_BookmarkVO(int curri_bookmark_num,
		int curri_num,
		int member_num) {
this.curri_bookmark_num =	curri_bookmark_num;
this.curri_num =	curri_num;
this.member_num =	member_num;
}
public Curri_BookmarkVO() {;}
public int getCurri_bookmark_num() {
	return curri_bookmark_num;
}
public void setCurri_bookmark_num(int curri_bookmark_num) {
	this.curri_bookmark_num = curri_bookmark_num;
}
public int getCurri_num() {
	return curri_num;
}
public void setCurri_num(int curri_num) {
	this.curri_num = curri_num;
}
public int getMember_num() {
	return member_num;
}
public void setMember_num(int member_num) {
	this.member_num = member_num;
}
@Override
public String toString() {
	return "Curri_BookmarkVO [curri_bookmark_num=" + curri_bookmark_num + ", curri_num=" + curri_num + ", member_num="
			+ member_num + ", getCurri_bookmark_num()=" + getCurri_bookmark_num() + ", getCurri_num()=" + getCurri_num()
			+ ", getMember_num()=" + getMember_num() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
			+ ", toString()=" + super.toString() + "]";
}

}
