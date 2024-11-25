function scr_panicbg_init()
{
	var layernum, layername, layers, bottom_id, top_id;
	
	layernum = 0;
	
	for (i = 0; i < 3; i++)
	{
	    layername = "Backgrounds_" + string(i + 1);
	    
	    if (layer_exists(layername))
	        layers[layernum++] = layername;
	}
	
	if (!layernum)
	    exit;
	
	bottom_id = layer_get_id(layers[0]);
	top_id = layer_get_id(layers[layernum - 1]);
	layer_script_begin(bottom_id, scr_panicbg_start);
	layer_script_end(top_id, scr_panicbg_end);
}
