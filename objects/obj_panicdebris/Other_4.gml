var lay_id, back_id, lay_id2, back_id2, lay_id3, back_id3;

lay_id = layer_get_id("Backgrounds_1");
back_id = layer_background_get_id(lay_id);
lay_id2 = layer_get_id("Backgrounds_2");
back_id2 = layer_background_get_id(lay_id2);
lay_id3 = layer_get_id("Backgrounds_3");
back_id3 = layer_background_get_id(lay_id3);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1192)
    layer_background_sprite(back_id, 1191);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1189)
    layer_background_sprite(back_id, 1190);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1194)
    layer_background_sprite(back_id3, 1195);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1158)
    layer_background_sprite(back_id, 1159);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1161)
    layer_background_sprite(back_id, 1162);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1163)
    layer_background_sprite(back_id2, 1164);

if (global.panic == 1 && layer_background_get_sprite(back_id) == 1229)
    layer_background_sprite(back_id, 1230);

if (global.panic == 1 && layer_background_get_sprite(back_id2) == 1227)
    layer_background_sprite(back_id2, 1228);

if (global.panic == 1 && layer_background_get_sprite(back_id3) == 1225)
    layer_background_sprite(back_id3, 1226);
