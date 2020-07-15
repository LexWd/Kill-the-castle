if(!Player.HitedRecently)
{
Player.HealthPoints -= 5;
Player.flash = 3;
Player.HitedRecently = true;
Player.alarm[1] = 20;
}
instance_destroy();