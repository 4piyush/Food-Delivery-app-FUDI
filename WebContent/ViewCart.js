var linkList=document.querySelectorAll(".remove");
linkList.forEach(function(e,i)
	{
		e.addEventListener("click",function(){
			e.setAttribute("href","RemoveFromCart?i="+i);
		})
	})
	
	
	var linkList=document.querySelectorAll(".add");
linkList.forEach(function(e,i)
	{
		e.addEventListener("click",function(){
			e.setAttribute("href","QuantityAdd?i="+i);
		})
	})
	
	
