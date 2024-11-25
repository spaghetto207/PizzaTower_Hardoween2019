if (!place_meeting(x, y, obj_barrel) && !instance_exists(obj_barrel) && !point_in_rectangle(x, y, __view_get(e__VW.XView, 0) - 50, __view_get(e__VW.YView, 0), __view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0) + 50, __view_get(e__VW.YView, 0) + __view_get(e__VW.HView, 0)) && !instance_exists(obj_barrelfloat))
    instance_create(x, y, obj_barrel);
