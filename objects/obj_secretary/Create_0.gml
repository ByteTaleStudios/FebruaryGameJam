color1   = ds_list_find_value(colors, irandom_range(0, ds_list_size(colors)-1));
gesture1 = ds_list_find_value(gestures, irandom_range(0, ds_list_size(gestures)-1));
color2   = ds_list_find_value(colors, irandom_range(0, ds_list_size(colors)-1));
gesture2 = ds_list_find_value(gestures, irandom_range(0, ds_list_size(gestures)-1));
Message  = "Hey, rookie, don't be scared! Jeff told me that it's your first day, so just remember people wearing %" + string(color1) + "% prefer " + string(gesture1) + " and  " + string(color2) + " ,  " + string(gesture2) + " , and you'll be fine. Probably. Good luck!";