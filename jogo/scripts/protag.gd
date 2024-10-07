extends CharacterBody2D

var status = {
	"money": 100,
	"polution": 100,
	"temperature": 100,
	"biodiversity": 100
}

func get_status_count(item):
	return status[item]
