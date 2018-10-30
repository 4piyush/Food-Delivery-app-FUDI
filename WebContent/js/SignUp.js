 function validate()
{ 
var username = document.form1.username.value;
var email = document.form1.email.value;
var number = document.form1.number.value; 
var password = document.form1.password.value;
var password_confirm= document.form1.password_confirm.value;
var address = document.form1.address.value;
if (username==null || username=="")
{ 
alert("Username can't be blank"); 
return false; 
}
else if (username.length<=4)
{ 
alert("Username should be greater than 4"); 
return false; 
}
else if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}
else if (number==null || number.length<10 || number.length>10)
{ 
alert("Number can't be blank"); 
return false; 
} 

else if (password!=password_confirm)
{ 
alert("Confirm Password should match with the Password"); 
return false; 
} 
else if (address==null || address=="")
{ 
alert("Confirm Password should match with the Password"); 
return false; 
}
}  