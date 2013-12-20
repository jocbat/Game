note
	description: "Piece which can be placed on a LOCATION."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	PIECE

feature
		put(location : LOCATION)
		require
	            is_putable_on(location)
		-- Put on the current piece on location
			do
				current_location := location
			end

		empty
			do
				current_location := Void
			end

		is_putable_on(location : LOCATION) : BOOLEAN
		-- is it possible to put piece on current location ?
		do
			Result := location.is_putable (Current)
		end

		-- which is put on current location if exist, null otherwise
		current_location : detachable LOCATION
end
