if (global.shroomfollow == true)
{
	event_inherited();
	if (sprite_index != spr_toppinshroom_intro)
	{
	    ds_queue_enqueue(followQueue, obj_player.x);
	    ds_queue_enqueue(followQueue, obj_player.y);
    
	    if (ds_queue_size(followQueue) > (LAG_STEPS * 2))
	    {
	        x = ds_queue_dequeue(followQueue) - (image_xscale * 4);
	        y = ds_queue_dequeue(followQueue) + 2;
	    }
	}
}