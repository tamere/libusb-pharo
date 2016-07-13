*HumanInterfaceDevice-GT
metadata
	^ { 
			{'bTag' . self bTag . self bTag printStringBase: 2 length: 4 padded: true}.
			{'bType' . self bType . self bType printStringBase: 2 length: 2 padded: true}.
			{'bSize' . self bSize . self bSize printStringBase: 2 length: 2 padded: true}
		}