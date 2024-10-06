extends CharacterBody2D

var status = {
	"money": 0,
	"polution": 0,
	"temperature": 0,
	"biodiversity": 0
}

func get_status_count(item):
	return status[item]
