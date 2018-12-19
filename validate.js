function ccodeValidate() {
	
	var c =/^[0-9A-Za-z]+$/;
	var code =document.getElementById("ccode").value;
	var status =false;
	
	if(code.match(c)) {
		document.getElementById("ccodeError").innerText= " ";
		status =true;
	}
	else {
		document.getElementById("ccodeError").innerText= "Enter alphabets and numeric characters only";
	    status =false;
	}
	return status;
	
}

function cnameValidate() {
	
	var n =/^[0-9A-Za-z]+$/;
	var name =document.getElementById("cname").value;
	var status=false;
	
	if(name.match(n)) {
		document.getElementById("cnameError").innerText= " ";
		status=true;
	}
	else {
		document.getElementById("cnameError").innerText= "Enter alphabets and numeric characters only";
		status=false;
	}
	return status;
	
}

function cdescValidate() {
	
	var d =/^[ 0-9A-Za-z]+$/;
	var desc =document.getElementById("cdesc").value;
	var status =false;
	
	if(desc.match(d)) {
		document.getElementById("cdescError").innerText= " ";
		status =true;
	}
	else {
		document.getElementById("cdescError").innerText= "Enter alphabets and numeric characters only";
		status =false;
	}
	return status;
	
}
 function pastValidate() {
	 
	 var p =/^[0-9]+$/;
	 var ps =document.getElementById("past").value;
	 var status =false;
	 
	 if(ps.match(p)) {
		 document.getElementById("pastError").innerText= " ";
		 status =true;
	 }
	 else {
	 	 document.getElementById("pastError").innerText= "Enter numeric characters only";
	     status =false;
 }
	 return status;
 }


 function userIdValidate() {
	 
	 var user =/^[0-9]+$/;
	 var id =document.getElementById("userid").value;
	 var status =false;
	 
	 if(id.match(user)) {
		 document.getElementById("useridError").innerText = " ";
		 status =true;
	 }
	 else {
		 document.getElementById("useridError").innerText ="Enter numeric characters only";
		 status =false;
	 }
	 
	 return status;
 }



