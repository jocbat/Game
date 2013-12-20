note
	description: "Location where place a piece"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	LOCATION

feature
	put(piece : PIECE)
	require
            is_putable(piece)
	-- Put on current location
		do
			current_piece := piece
		end

	empty
		do
			current_piece := Void
		end

	is_putable(piece : PIECE) : BOOLEAN
	-- is it possible to put piece on current location ?
		deferred
		end

	-- which is put on current location if exist, null otherwise
	current_piece : detachable PIECE


end
