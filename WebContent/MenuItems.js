
var linkList=document.querySelectorAll(".go");
linkList.forEach(function(e,i)
	{
		e.addEventListener("click",function(){
			e.setAttribute("href","Detail.jsp?i="+(i));
		})
	})
