package aptogether.model;

import java.io.Serializable;

public class Market_Product implements Serializable{
private int seq;
private String writer; 
private String product_name;
private int price;
private String fname;
private String contents;
private String regdate;
private String isSale;

@Override
public String toString() {
	return "Market_Product [seq=" + seq + ", writer=" + writer + ", product_name=" + product_name + ", price=" + price
			+ ", fname=" + fname + ", contents=" + contents + ", regdate=" + regdate + ", isSale=" + isSale + "]";
}
public int getSeq() {
	return seq;
}
public void setSeq(int seq) {
	this.seq = seq;
}
public String getWriter() {
	return writer;
}
public void setWriter(String writer) {
	this.writer = writer;
}
public String getProduct_name() {
	return product_name;
}
public void setProduct_name(String product_name) {
	this.product_name = product_name;
}
public int getPrice() {
	return price;
}
public void setPrice(int string) {
	this.price = string;
}
public String getFname() {
	return fname;
}
public void setFname(String fname) {
	this.fname = fname;
}
public String getContents() {
	return contents;
}
public void setContents(String contents) {
	this.contents = contents;
}
public String getRegdate() {
	return regdate;
}
public void setRegdate(String regdate) {
	this.regdate = regdate;
}
public String getIsSale() {
	return isSale;
}
public void setIsSale(String isSale) {
	this.isSale = isSale;
}
public Market_Product(int seq, String writer, String product_name, int price, String fname, String contents,
		String regdate, String isSale) {
	super();
	this.seq = seq;
	this.writer = writer;
	this.product_name = product_name;
	this.price = price;
	this.fname = fname;
	this.contents = contents;
	this.regdate = regdate;
	this.isSale = isSale;
}
public Market_Product() {}

}
