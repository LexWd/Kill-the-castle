hp -= PlayerSwordInUse.Damage;
flash = 3;
HitedRecently = true;
alarm[0] = 25;
if(hp<=0) then instance_destroy();