///maze_coll_x(maze,x,y,gridperc,objrad,check_corners);
var grid, wallperc, modif, curx, cury;
i = argument4;
modif = 0;
wallperc = (1-argument3)/2;
grid = ds_grid_get(argument0, floor(argument1), floor(argument2));
curx = (argument1 mod 1);
cury = (argument2 mod 1);
if (curx+argument4>1-wallperc) {
    if (string_char_at(grid, 2)=="0" || (argument5==true && (cury-argument4<wallperc || cury+argument4>1-wallperc))) modif -= (curx+argument4)-(1-wallperc);
}
if (curx-argument4<wallperc) {
    if (string_char_at(grid, 4)=="0" || (argument5==true && (cury-argument4<wallperc || cury+argument4>1-wallperc))) modif += wallperc-(curx-argument4);
}
return modif;
