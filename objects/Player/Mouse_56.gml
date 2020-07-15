if(!instance_exists(PlayerSwordInUse) && !CareSmth) then {
	CareSmth = true;
	instance_create_layer(x,y,layer,PlayerSwordInUse);
	instance_deactivate_object(PlayerSwordUnused);
}
