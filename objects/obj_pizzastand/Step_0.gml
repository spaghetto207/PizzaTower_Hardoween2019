if (place_meeting(x, y - 1, obj_player) && (obj_player.x >= (x - 10) && obj_player.x <= (x + 10)) && (global.shroomfollow == true || global.cheesefollow == true || global.tomatofollow == true || global.sausagefollow == true || global.pineapplefollow == true))
    obj_player.state = states.pizzathrow;
