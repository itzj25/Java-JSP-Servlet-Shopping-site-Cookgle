package vo;

public class ProductVO {
          // NUMBER(2) PRIMARY KEY,
String pname;     // VARCHAR2(40),
String category;    // VARCHAR2(40),
String price;           // NUMBER(8)
String userid;
String pid;
String img;

public String getImg() {
	return img;
}

public void setImg(String img) {
	this.img = img;
}

public ProductVO(){
	
}

public String getPid() {
	return pid;
}

public void setPid(String pid) {
	this.pid = pid;
}

public String getPname() {
	return pname;
}

public void setPname(String pname) {
	this.pname = pname;
}

public String getCategory() {
	return category;
}

public void setCategory(String category) {
	this.category = category;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}

public String getUserid() {
	return userid;
}

public void setUserid(String userid) {
	this.userid = userid;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + ((category == null) ? 0 : category.hashCode());
	result = prime * result + ((pid == null) ? 0 : pid.hashCode());
	result = prime * result + ((pname == null) ? 0 : pname.hashCode());
	result = prime * result + ((price == null) ? 0 : price.hashCode());
	result = prime * result + ((userid == null) ? 0 : userid.hashCode());
	return result;
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	ProductVO other = (ProductVO) obj;
	if (category == null) {
		if (other.category != null)
			return false;
	} else if (!category.equals(other.category))
		return false;
	if (pid == null) {
		if (other.pid != null)
			return false;
	} else if (!pid.equals(other.pid))
		return false;
	if (pname == null) {
		if (other.pname != null)
			return false;
	} else if (!pname.equals(other.pname))
		return false;
	if (price == null) {
		if (other.price != null)
			return false;
	} else if (!price.equals(other.price))
		return false;
	if (userid == null) {
		if (other.userid != null)
			return false;
	} else if (!userid.equals(other.userid))
		return false;
	return true;
}

@Override
public String toString() {
	return "ProductVO [pname=" + pname + ", category=" + category + ", price=" + price + ", userid=" + userid + ", pid="
			+ pid + "]";
}


}
