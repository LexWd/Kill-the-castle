if(( sprite_index == SwordRight) && instance_exists(Player)) then 
{
instance_destroy();
instance_activate_object(PlayerSwordUnused);
Player.CareSmth = false;
//instance_create_layer(Player.x,Player.y,Player.layer,PlayerSwordUnused);
}