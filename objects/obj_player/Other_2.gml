for (i = 0; i < 100; i += 1)
    global.CollectablesArray[i] = 0;

global.saveroom = ds_list_create();

instance_create_depth(0, 0, 0, obj_persistent);
instance_create_depth(0, 0, 0, obj_debugcontroller);