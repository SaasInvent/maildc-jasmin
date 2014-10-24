@maildc = @maildc ? {}

@maildc.info = do ->
	#private
	name = ""
	getName = -> name
	setName = (value) -> name = value

	age = 0
	getAge = -> age
	setAge = (value) -> age = value

	eat =  (food) -> 
		if food? 
			alert "Yummy #{food}!" 
		else 
			alert "I'm still hungry!"

	# public
	getName: getName
	setName: setName
	getAge: getAge
	setAge: setAge
	eat: eat