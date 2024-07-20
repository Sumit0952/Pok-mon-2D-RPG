extends Node


func _ready():
	
	pass
	
	
var databasePokimon = {
	0 : {
		"Name" : "Pikachu",
		"Frame":0,
		"Health":100,
		"Level":1,
		"Exp":0,
		"MaxExp":10,
		"Strength":10,
		"Defenece":5,
		"Scene" : preload("res://icon.svg"),
		"Attack" : {
			0:{
				"Name" : "Thunder Shock" , 
				"Target" : "Monster" , 
				"Damege" : 10,
				"cost" : 2
			},
			1:{
				"Name" : "Thunder Boult" , 
				"Target" : "Monster" , 
				"Damege" : 10,
				"cost" : 2
			},
			2:{
				"Name" : "Wild charge" , 
				"Target" : "Monster" , 
				"Damege" : 10,
				"cost" : 2
			}
			
			
		},
		
	},
	
	
}

var selectedPokimons ={}

func addpokimon(Name):
	for i in databasePokimon:
		if databasePokimon[i]["Name"]== Name:
			var tempDic = databasePokimon[i].duplicate(true)
			selectedPokimons[selectedPokimons.size()] = tempDic
			
func addEp(amount):
	for i in selectedPokimons:
		selectedPokimons[i]["Exp"]+= amount
		if selectedPokimons[i]["Exp"]>=selectedPokimons[i]["MaxExp"]:
			selectedPokimons[i]["Exp"]=0
			selectedPokimons[i]["MaxExp"]*=1.5
			#LEVEL UP
			selectedPokimons[i]["Level"]+=1
			
