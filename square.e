note
	description: "Summary description for {SQUARE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	SQUARE

inherit
	LOCATION
	redefine is_putable
	end

create
	make

feature
	make
	do

	end

	is_putable(piece : PIECE) : BOOLEAN
	do
		Result := attached { BRICK } piece
	end
end
