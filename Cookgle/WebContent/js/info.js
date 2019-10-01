/**
 * 
 */

function info(pname,category,price,img) {
	const result = confirm('장바구니에 추가할꺼가');
	if(result){
document.getElementById("pname").value =pname;
document.getElementById("category").value =category;
document.getElementById("price").value =price;
	}
	else{
		return ;
	}
	};
		
