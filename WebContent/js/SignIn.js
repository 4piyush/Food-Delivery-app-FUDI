 function validate()
{ 
var username = document.form1.username.value;

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
}  