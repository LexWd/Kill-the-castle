/// @description Insert description here

if(!Player.HitedRecently&&sprite_index == GargantuaAtack)
{
Player.HealthPoints -= 5;
Player.flash = 3;
Player.HitedRecently = true;
Player.alarm[1] = 20;
}
