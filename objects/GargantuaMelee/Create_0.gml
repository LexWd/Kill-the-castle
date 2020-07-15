/// @description Начальные установки врага

hMove = 0;
vMove = 0;
hsp = 0;
vsp = 0;

path = path_add();

alarm[1] = 5;

WeaponID = instance_create_layer(x,y,"Weapons",MeleeWeapon);
WeaponID.Enemy = id;