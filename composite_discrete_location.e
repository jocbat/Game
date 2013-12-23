note
	description: "Summary description for {COMPOSITE_DISCRETE_LOCATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	COMPOSITE_DISCRETE_LOCATION

inherit
	DISCRETE_LOCATION
	redefine
		is_putable,
		put
	end
	LINKED_LIST[COMPOSITE_DISCRETE_LOCATION]
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

	is_putable(piece : COMPOSITE_DISCRETE_PIECE) : BOOLEAN
	require else
		piece_not_void : piece /= Void
	do
		Result := true
	end

	put(piece : COMPOSITE_DISCRETE_PIECE)
	do
		Precursor(piece)
	end


end
