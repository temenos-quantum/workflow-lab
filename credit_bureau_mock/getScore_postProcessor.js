var Param = com.konylabs.middleware.dataobject.Param

function genScore(){

	var id = request.getParameter("id_number")
	if(typeof id === "undefined" || id.trim() === ""){return}

	var d = id.replace(/\D/g, "").slice(-1) //Get the last digit.
	//300, 600, 700 850
	var min, max, grade

	if (d % 2 === 0){
		min = 700
		max = 851
		grade = "excellent"
	}
	else if (d === "5"){
		min = 600
		max = 700
		grade = "good"
	}
	else{
		min = 300
		max = 600
		grade = "bad"
	}

	result.addParam(new Param(
		"score",
		Math.floor(Math.random() * (max - min) + min),
		"number"
	))

	result.addParam(new Param("grade", grade, "string"))
	result.addParam(new Param("id_number", id, "string"))
}

genScore()
