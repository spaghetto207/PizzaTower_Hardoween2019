if (obj_player.state != states.hurt && global.cheesefollow == 0)
{
    global.combotime = 60;
    global.style += 50;
    ds_list_add(global.saveroom, id);
    
    if (global.toppintotal < 5)
        obj_tv.message = "YOU NEED " + string(5 - global.toppintotal) + " MORE TOPPINS!";
    
    if (global.toppintotal == 5)
        obj_tv.message = "YOU HAVE ALL TOPPINS!";
    
    obj_tv.showtext = 1;
    obj_tv.alarm[0] = 150;
    global.toppintotal += 1;
    global.cheesefollow = 1;
    panic = 0;
}
