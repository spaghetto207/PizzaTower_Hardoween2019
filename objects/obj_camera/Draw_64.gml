pal_swap_set(target.spr_palette, target.paletteselect, 0);

if (target.backupweapon == 1)
    draw_sprite_ext(spr_shotgunbackup, -1, 50, 100, 1, 1, 1, c_white, alpha);

if (target.state != states.gameover)
{
    if (target.character == "P")
    {
        if (target.sprite_index == spr_knightpep_thunder)
            draw_sprite_ext(spr_pepinoHUDthunder, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index != spr_knightpep_start && (target.state == states.knightpep || target.state == states.knightpepslopes))
            draw_sprite_ext(spr_pepinoHUDknight, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_bombpep_end)
            draw_sprite_ext(spr_pepinoHUDbombend, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (instance_exists(obj_itspizzatime) || target.sprite_index == spr_bombpep_intro || target.sprite_index == spr_bombpep_runabouttoexplode || target.sprite_index == spr_bombpep_run || target.sprite_index == spr_player_fireass)
            draw_sprite_ext(spr_pepinoHUDscream, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.Sjumpland || (target.state == states.freefallland && shake_mag > 0))
            draw_sprite_ext(spr_pepinoHUDstun, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_player_victory || target.state == states.keyget || target.state == states.smirk || target.state == states.gottreasure || (target.state == states.bossintro && target.sprite_index == spr_player_levelcomplete))
            draw_sprite_ext(spr_pepinoHUDhappy, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_player_machroll || target.sprite_index == spr_player_tumble)
            draw_sprite_ext(spr_pepinoHUDrolling, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.combo >= 3)
            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach1 || target.state == states.chainsaw || target.state == states.freefallprep || target.state == states.freefall || target.state == states.tackle || target.state == states.Sjump || target.state == states.slam || target.state == states.Sjumpprep || target.state == states.grab || target.state == states.punch || target.state == states.backbreaker || target.state == states.backkick || target.state == states.uppunch || target.state == states.shoulder)
            draw_sprite_ext(spr_pepinoHUDmach1, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach2 || target.sprite_index == spr_player_dive || target.sprite_index == spr_player_machslideboost || target.state == states.climbwall || target.state == states.handstandjump || target.state == states.superslam)
            draw_sprite_ext(spr_pepinoHUDmach2, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach3 && target.sprite_index == spr_player_crazyrun)
            draw_sprite_ext(spr_pepinoHUDmach4, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach3 || target.sprite_index == spr_player_machslideboost3)
            draw_sprite_ext(spr_pepinoHUDmach3, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.hurt || target.sprite_index == spr_bombpep_end || target.sprite_index == spr_player_fireassend || target.state == states.timesup || target.state == states.bombpep || (target.state == states.bossintro && target.sprite_index == spr_player_bossintro) || (target.state == states.bossintro && target.sprite_index == spr_player_idle))
            draw_sprite_ext(spr_pepinoHUDhurt, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.angry == 1)
            draw_sprite_ext(spr_pepinoHUD3hp, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_player_hurtidle || target.sprite_index == spr_player_hurtwalk)
            draw_sprite_ext(spr_pepinoHUD1hp, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.panic == true || global.snickchallenge == true)
            draw_sprite_ext(spr_pepinoHUDpanic, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_shotgun_pullout)
            draw_sprite_ext(spr_pepinoHUDmenacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else
            draw_sprite_ext(spr_pepinoHUD, -1, 125, 100, 1, 1, 1, c_white, alpha);
    }
    
    if (target.character == "S")
        draw_sprite_ext(spr_snickHUD, -1, 125, 60, 1, 1, 1, c_white, alpha);
    
    if (target.character == "N")
    {
        if (target.sprite_index == target.spr_knightpepthunder)
            draw_sprite_ext(spr_noiseHUD_thunder, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index != target.spr_knightpepstart && (target.state == states.knightpep || target.state == states.knightpepslopes))
            draw_sprite_ext(spr_noiseHUD_knight, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == target.spr_bombpepend)
            draw_sprite_ext(spr_noiseHUD_bomb, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (instance_exists(obj_itspizzatime) || target.sprite_index == target.spr_bombpepintro || target.sprite_index == target.spr_bombpeprunabouttoexplode || target.sprite_index == target.spr_bombpeprun || target.sprite_index == target.spr_fireass)
            draw_sprite_ext(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.Sjumpland || (target.state == states.freefallland && shake_mag > 0))
            draw_sprite_ext(spr_noiseHUD_groundpound, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == target.spr_victory || target.state == states.keyget || target.state == states.smirk || target.state == states.gottreasure || (target.state == states.bossintro && target.sprite_index == target.spr_player_levelcomplete))
            draw_sprite_ext(spr_noiseHUD_happy, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.combo >= 3)
            draw_sprite_ext(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach1 || target.state == states.chainsaw || target.state == states.freefallprep || target.state == states.freefall || target.state == states.tackle || target.state == states.Sjump || target.state == states.slam || target.state == states.Sjumpprep || target.state == states.grab || target.state == states.punch || target.state == states.backbreaker || target.state == states.backkick || target.state == states.uppunch || target.state == states.shoulder)
            draw_sprite_ext(spr_noiseHUD_mach1, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach2 || target.sprite_index == target.spr_dive || target.sprite_index == target.spr_machslideboost || target.state == states.climbwall || target.state == states.handstandjump || target.state == states.superslam)
            draw_sprite_ext(spr_noiseHUD_mach2, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach3 && target.sprite_index == target.spr_crazyrun)
            draw_sprite_ext(spr_noiseHUD_crazyrun, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.mach3 || target.sprite_index == target.spr_mach3boost)
            draw_sprite_ext(spr_noiseHUD_mach3, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.state == states.hurt || target.sprite_index == target.spr_bombpepend || target.sprite_index == target.spr_fireassend || target.state == states.timesup || target.state == states.bombpep || (target.state == states.bossintro && target.sprite_index == target.spr_player_bossintro) || (target.state == states.bossintro && target.sprite_index == target.spr_idle))
            draw_sprite_ext(spr_noiseHUD_hurt, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.angry == 1)
            draw_sprite_ext(spr_noiseHUD_angry, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == target.spr_hurtidle || target.sprite_index == target.spr_hurtwalk)
            draw_sprite_ext(spr_noiseHUD_lowhealth, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (global.panic == true || global.snickchallenge == true)
            draw_sprite_ext(spr_noiseHUD_panic, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else if (target.sprite_index == spr_shotgun_pullout)
            draw_sprite_ext(spr_noiseHUD_menacing, -1, 125, 100, 1, 1, 1, c_white, alpha);
        else
            draw_sprite_ext(spr_noiseHUD_idle, -1, 125, 100, 1, 1, 1, c_white, alpha);
    }
    
    shader_reset();
    
    if (target.movespeed < 2.4 || !(target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbar, 0, 125, 140, 1, 1, 1, c_white, alpha);
    else if (target.movespeed >= 2.4 && target.movespeed < 4.8 && (target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbar, 1, 125, 140, 1, 1, 1, c_white, alpha);
    else if (target.movespeed >= 4.8 && target.movespeed < 7.2 && (target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbar, 2, 125, 140, 1, 1, 1, c_white, alpha);
    else if (target.movespeed >= 7.2 && target.movespeed < 9.6 && (target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbar, 3, 125, 140, 1, 1, 1, c_white, alpha);
    else if (target.movespeed >= 9.6 && target.movespeed < 12 && (target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbar, 4, 125, 140, 1, 1, 1, c_white, alpha);
    else if (target.movespeed >= 12 && (target.state == states.mach1 || target.state == states.mach2 || target.state == states.mach3 || target.state == states.climbwall || target.state == states.machslide || target.state == states.machroll || target.state == states.handstandjump))
        draw_sprite_ext(spr_speedbarmax, -1, 125, 140, 1, 1, 1, c_white, alpha);
    
    if (target.y < 200 && target.x < 200)
        alpha = 0.5;
    else
        alpha = 1;
    
    font = font_add_sprite_ext(spr_font, "ABCDEFGHIJKLMNOPQRSTUVWXYZ!.1234567890:", 1, 0);
    draw_set_font(font);
    draw_set_halign(fa_center);
    draw_set_color(c_white);
    
    if (global.panic == true || global.snickchallenge == true)
    {
        if (global.seconds < 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red);
            else
                draw_set_color(c_white);
            
            draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":0" + string(global.seconds)));
        }
        else if (global.seconds >= 10)
        {
            if (global.minutes < 1)
                draw_set_color(c_red);
            else
                draw_set_color(c_white);
            
            draw_text(random_range(1, -1) + 480, random_range(1, -1) + 65, string_hash_to_newline(string(global.minutes) + ":" + string(global.seconds)));
        }
    }
    
    if (global.key_inv == 1)
        draw_sprite_ext(spr_key, -1, 50, 30, 1, 1, 1, c_white, alpha);
    
    draw_sprite_ext(spr_inv, -1, 50, 30, 1, 1, 1, c_white, alpha);
}

gpu_set_blendmode(bm_normal);
