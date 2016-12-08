function changeselect()
{
	var condition = $(".searchcondition").val();
	if('bystatus'==condition)
	{
		$(".daoshi").css("display",'none');
		$(".bystatus").css("display",'inline');
		$(".rxnf").css("display",'none');
		
	}
	else if('daoshi'==condition)
	{
		$(".daoshi").css("display",'inline');
		$(".bystatus").css("display",'none');
		$(".rxnf").css("display",'none');
		
	}
	else if('rxnf'==condition)
	{
		$(".daoshi").css("display",'none');
		$(".bystatus").css("display",'none');
		$(".rxnf").css("display",'inline');
		
	}
}

function search()
{
	var condition = $(".searchcondition").val();
	if('bystatus'==condition)
	{
		var selection = $(".bystatus").val();
	}
	else if('daoshi'==condition)
	{
		var selection = $(".daoshi").val();
	}
	else if('rxnf'==condition)
	{
		var selection = $(".rxnf").val();
	}
	$("#condition").val(condition);
	$("#selection").val(selection);
	$("#searchform").submit();
}