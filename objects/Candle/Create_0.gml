/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

LightID = instance_create_layer(x,y,layer,Light);
LightID.image_xscale =sprite_width/ Light.sprite_width;
LightID.image_yscale =sprite_height/ Light.sprite_height;
