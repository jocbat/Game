note
	description: "Atomic PIECE defined by 4 points : (0,0) (1,0) (1,1) and (0,1)"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BRICK

inherit
	DISCRETE_PIECE

create
	make

feature
	make
	local
		list : ARRAYED_LIST[TUPLE[INTEGER,INTEGER]]
	do
		create list.make (4)
		list.at (1) := [ 0 , 0]
		list.at (2) := [ 1 , 0]
		list.at (3) := [ 1 , 1]
		list.at (4) := [ 0 , 1]
		representation := list
	end
end
