
var linkList=document.querySelectorAll(".go");
linkList.forEach(function(e,j)
	{
		e.addEventListener("click",function(){
			e.setAttribute("href","Menu?j="+(j));
		})
	})
