var cellWidth = 64;
var cellHeight = 64;

var hCells = room_width div cellWidth;
var vCells = room_height div cellHeight;

globalvar grid;
grid = mp_grid_create(0, 0, hCells, vCells, cellWidth, cellHeight);

//mp_grid_add_instances(grid, WallObj, false);
mp_grid_add_instances(grid, DoorClosed, false);