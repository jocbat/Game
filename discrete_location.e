note
	description: "Summary description for {DISCRETE_LOCATION}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DISCRETE_LOCATION

inherit
	LOCATION

feature
	representation : LIST[TUPLE[INTEGER,INTEGER]]

end
