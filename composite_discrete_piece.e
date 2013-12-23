note
	description: "DISCRETE_PIECE which is the composition of other DISCRETE_PIECE"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMPOSITE_DISCRETE_PIECE

inherit
	DISCRETE_PIECE
	LINKED_LIST[COMPOSITE_DISCRETE_PIECE]
	rename
		empty as internal_empty,
		put as internal_put

	undefine
		is_equal,
		copy,
		make
	end

create
	make

feature
	make
	local
		list : ARRAYED_LIST[TUPLE[INTEGER,INTEGER]]
	do
		create list.make (0)
		representation := list
	end

end
