note
	description: "PIECE which can be described by a finite list of points"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DISCRETE_PIECE

inherit
	PIECE

feature

	representation : LIST[TUPLE[INTEGER,INTEGER]]

end
