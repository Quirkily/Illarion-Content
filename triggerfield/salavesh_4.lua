--Teleporter in the Salavesh Dungeon
--Estralis Seborian

require("base.common")

module("triggerfield.salavesh_4", package.seeall)

function MoveToField( User )    
    world:gfx(41,User.pos);
	world:makeSound(13,User.pos);
    User:warp( position( 728,436,-3 ) );
    world:gfx(41,User.pos);
    world:makeSound(13,User.pos);
end
