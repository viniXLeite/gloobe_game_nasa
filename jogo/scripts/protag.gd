extends CharacterBody2D

var status = {
	"money": 145,
	"polution": 105,
	"temperature": 111,
	"biodiversity": 80
}

func get_status_count(item):
	return status[item]
