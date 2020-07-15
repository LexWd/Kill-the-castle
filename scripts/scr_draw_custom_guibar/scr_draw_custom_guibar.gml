///@function scr_draw_custom_guibar(sprite, subImg, currentStat, maxStat, x, y, direction);
///@description Draw a gui bar based on the variables inputted
///@param {id} sprite The sprite index of the gui bar to draw
///@param {real} subImg The image index / frame of the gui bar to draw
///@param {real} currentStat The value of the current stat, that is what the health/experience/stamina etc. is at that moment
///@param {real} maxStat The maximum value the stat can reach before it can't go any further (level reached / health full)
///@param {real} x The x-coordinate to draw the gui bar at
///@param {real} y The y-coordinate to draw the gui bar at
///@param {real} direction 0 for left to right, 1 for bottom to top (NOTE: FOR BOTTOM TO TOP YOUR SPRITE MUST BE FLIPPED VERTICALLY)
var _spr = argument0;
var _img = argument1;
var _cur = argument2;
var _max = argument3;
var _xx = argument4;
var _yy = argument5;
var _dir = argument6;

if (_dir == 0)
{draw_sprite_part(_spr,_img,0,0,_cur*(sprite_get_width(_spr)/_max),sprite_get_height(_spr),_xx,_yy);}
else
{draw_sprite_part_ext(_spr,_img,0,0,sprite_get_width(_spr),(_cur/_max)*sprite_get_height(_spr),_xx,_yy,1,-1,c_white,1);}