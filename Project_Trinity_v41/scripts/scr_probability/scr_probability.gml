// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//created by tashawn deshazier

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//created by tashawn deshazier
function card_power_chance(){
	
	var prob = irandom(99);
	
	if(prob <= 9)
	{
		return 3;
	}
	
	if(prob > 9 && prob <= 29)
	{
		return 2;
	}
	
	if(prob > 29 && prob <= 59)
	{
		return 1;
	}
	
	return 0;

}

function card_type_chance()
{
	var prob = irandom(99);
	
	if(prob <= 9)
	{
		return 2;
	}
	
	if(prob > 9 && prob <= 29)
	{
		return 1;
	}
	
	return 0;
}

function card_utility_chance()
{
	var prob = irandom(99);
	
	if(prob <= 5)
	{
		return 3;
	}
	
	if(prob > 6 && prob <= 16)
	{
		return 1;
	}
	
	if(prob > 17 && prob <= 46)
	{
		return 0;
	}
	
	return 2;	

}

function utility_card_type()
{
	var prob = irandom(99)
	
	if(prob <= 33)
	{
		return 2;
	}
	
	if(prob > 34 && prob <= 66)
	{
		return 1;
	}
	
	return 0;
}

function replacing_card_chance()
{
	var prob = irandom(99)
	
	if(prob <= 20)
	{
		return 2;
	}
	
	if(prob > 21 && prob <= 60)
	{
		return 1;
	}
	
	return 0;
}

function card_limb_chance()
{
		var prob = irandom(99)
		
		if(prob < 9)
			return 0
		
		if(prob > 10 && prob < 24)
			return 2
		
		if(prob > 25 && prob < 39)
			return 3
		
		if(prob > 40 && prob < 54)
			return 4
			
		if(prob > 55 && prob < 69)
			return 5
		
		return 1;
}

function check_chance(percent)
{
	return irandom(100) < percent;
}

