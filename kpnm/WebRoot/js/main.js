var  length;
var interval;
function initnews()
{
	$("#gundong").children("div:first-child").css('margin-top', "340px");
	interval = setInterval(scrollnews,40);
}
function scrollnews()
{
		var currentmargin = $("#gundong").children("div:first-child").css("margin-top");
		var marginvalue = currentmargin.substring(0, currentmargin.indexOf('px'));
		
		var lastnews = $("#gundong").children("div:last-child").css("margin-top");
		var lastmarginvalue = currentmargin.substring(0, lastnews.indexOf('px'));
		var gdh = document.getElementById("gundong").getBoundingClientRect().top;
		var lasth = $("#gundong").children("div:last-child")[0].getBoundingClientRect().top
		if(lasth - gdh < -30)
			marginvalue = 340;
		else
			marginvalue -= 1;
		
		$("#gundong").children("div:first-child").css('margin-top', marginvalue);
}
function clearscroll()
{
	clearInterval(interval);
}

function continuescroll()
{
	interval = setInterval(scrollnews,40);
}

var bestright=0;
var dxgdinterval;
var step = 1;
function initDxgd()
{
	var brmargin = $(".dxgd").children("img:last-child").css("margin-left");
	bestright = brmargin.substring(0, brmargin.indexOf('px'));
	
	dxgdinterval = setInterval(dxgdScroll,40);
//	dxgdScroll();
}
function dxgdScroll()
{
	$(".dxgd").children().each(function(index)
	{
		var cleft = $(this).css("margin-left");
		var cleftvalue = cleft.substring(0, cleft.indexOf('px'));
		cleftvalue -= step;
		$(this).css("margin-left", cleftvalue);
		if(cleftvalue <= -153)
		{
			$(this).css("margin-left", bestright);
		}
	});
}
function dxgdclearscroll()
{
	clearInterval(dxgdinterval);
}

function dxgdcontinuescroll()
{
	dxgdinterval = setInterval(dxgdScroll,40);
}
var begin=0;
var end=7;
function prevlink()
{
	var len = $(".link").children().length;
	
	var aclass = ".link a:lt("+end+"):gt("+begin+")";
	$(aclass).css('display','none');
	aclass = ".link a:eq("+begin+")";
	$(aclass).css('display','none');
//	$(".link a:lt(4):gt(1)").css('display','none');
	var cha = begin -0;
	if(cha >= 7)
	{
		end=begin;
		begin=begin-7;
		
		if(cha == 7)
		{
			$("#jtal").css('display','none');
			$("#jtar").css('display','');
		}
		else
		{
			$("#jtal").css('display','');
			$("#jtar").css('display','');
		}
	}
	else if(cha>0 && cha<7)
	{
		end=begin;
		begin=0;
		$("#jtal").css('display','none');
		$("#jtar").css('display','');
	}
	aclass = ".link a:lt("+end+"):gt("+begin+")";
	$(aclass).css('display','');
	aclass = ".link a:eq("+begin+")";
	$(aclass).css('display','');
}
function nextlink()
{
	var len = $(".link").children().length;
	
	var aclass = ".link a:lt("+end+"):gt("+begin+")";
	$(aclass).css('display','none');
	aclass = ".link a:eq("+begin+")";
	$(aclass).css('display','none');
//	$(".link a:lt(4):gt(1)").css('display','none');
	var cha = len -end;
	if(cha >= 7)
	{
		begin=end;
		end=end+7;
		
		if(cha == 7)
		{
			$("#jtal").css('display','');
			$("#jtar").css('display','none');
		}
		else
		{
			$("#jtal").css('display','');
			$("#jtar").css('display','');
		}
	}
	else if(cha>0 && cha<7)
	{
		begin=end;
		end=len;
		$("#jtal").css('display','');
		$("#jtar").css('display','none');
	}
	aclass = ".link a:lt("+end+"):gt("+begin+")";
	$(aclass).css('display','');
	aclass = ".link a:eq("+begin+")";
	$(aclass).css('display','');
}







