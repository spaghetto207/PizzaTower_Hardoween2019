if (global.tomatofollow == true)
{
    event_inherited();
	
    if (sprite_index != spr_toppintomato_intro) 
	{
	    if (global.cheesefollow == true)
	    {
	        ds_queue_enqueue(followQueue, obj_pizzakincheese.x + (image_xscale * 4));
	        ds_queue_enqueue(followQueue, obj_pizzakincheese.y - 2);
	    }
	    else if (global.shroomfollow == true)
	    {
	        ds_queue_enqueue(followQueue, obj_pizzakinshroom.x + (image_xscale * 4));
	        ds_queue_enqueue(followQueue, obj_pizzakinshroom.y - 2);
	    }
	    else
	    {
	        ds_queue_enqueue(followQueue, obj_player.x);
	        ds_queue_enqueue(followQueue, obj_player.y);
	    }
    
	    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
	    {
	        x = ds_queue_dequeue(followQueue) - (image_xscale * 4);
	        y = ds_queue_dequeue(followQueue) + 2;
	    }
	}
}