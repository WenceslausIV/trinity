/// @description Insert description here
// You can write your code in this editor


tracker = 0;

if(instance_exists(selected_target))
{
	if(selected_target.locked_in)
		tracker++;
}

if(instance_exists(selected_utility))
{
	if(selected_utility.locked_in)
		tracker++;
}

if(instance_exists(selected_weapon))
{
	if(selected_weapon.locked_in)
		tracker++;
}


//if(instance_exists(selected_target))
//{
//	if(instance_exists(selected_weapon))
//	{
//		if(instance_exists(selected_utility))
//		{
//			if(selected_target.locked_in && selected_weapon.locked_in && selected_utility.locked_in)
//				all_cards_chosen = true;
//			else
//				all_cards_chosen = false;
//		}
//	}
//}

if(tracker == 3)
	all_cards_chosen = true;
else
	all_cards_chosen = false;
	



