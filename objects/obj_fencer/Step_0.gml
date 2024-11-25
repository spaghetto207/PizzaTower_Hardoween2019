switch (state)
{
    case states.idle:
        scr_enemy_idle();
        break;
    
    case states.charge:
        scr_enemy_charge();
        break;
    
    case states.turn:
        scr_enemy_turn();
        break;
    
    case states.walk:
        scr_enemy_walk();
        break;
    
    case states.land:
        scr_enemy_land();
        break;
    
    case states.hit:
        scr_enemy_hit();
        break;
    
    case states.stun:
        scr_enemy_stun();
        break;
    
    case states.pizzagoblin_throw:
        scr_pizzagoblin_throw();
        break;
    
    case states.grabbed:
        scr_enemy_grabbed();
        break;
}

if (state == states.stun && stunned > 100 && birdcreated == 0)
{
    birdcreated = 1;
    
    with (instance_create(x, y, obj_enemybird))
        ID = other.id;
}

if (state != states.stun)
    birdcreated = 0;

if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 60) && y >= (obj_player.y - 60)))
{
    if (state != states.idle && obj_player1.state == states.mach3)
    {
        state = states.idle;
        sprite_index = scaredspr;
        
        if (x != obj_player.x)
            image_xscale = -sign(x - obj_player.x);
    }
}

if (x != obj_player.x && grounded)
{
    if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y <= (obj_player.y + 20) && y >= (obj_player.y - 20)))
    {
        if (state == states.walk && charging == 0)
        {
            with (instance_create(x, y, obj_forkhitbox))
                ID = other.id;
            
            charging = 1;
            state = states.charge;
            movespeed = 5;
            vsp = -7;
            sprite_index = spr_fencer_chargestart;
        }
    }
}

if (state == states.stun || state == states.walk)
{
    charging = 0;
    movespeed = 0;
}

if (sprite_index == spr_fencer_chargestart && floor(image_index) == (image_number - 1))
    sprite_index = spr_fencer_charge;

if (flash == 1 && alarm[2] <= 0)
    alarm[2] = 0.15 * room_speed;

if (hitboxcreate == 0 && state == states.walk)
{
    hitboxcreate = 1;
    
    with (instance_create(x, y, obj_forkhitbox))
        ID = other.id;
}

if (state != states.grabbed)
    depth = 0;

if (state != states.stun)
    thrown = 0;

if (boundbox == 0)
{
    with (instance_create(x, y, obj_baddiecollisionbox))
    {
        sprite_index = other.sprite_index;
        baddieID = other.id;
        other.boundbox = 1;
    }
}
