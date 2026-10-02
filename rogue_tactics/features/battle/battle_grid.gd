@tool
class_name BattleGrid
extends Node3D

@export var grid_size :Vector2i = Vector2i(10,10)
@export var cell_size :Vector2 = Vector2.ONE

class BattleTileData:
	var walkable := true
	var move_cost := 1

var _tiles: Dictionary[Vector2i, BattleTileData] = {}


func _process(_delta: float) -> void:
	DebugDraw3D.draw_grid(global_position, Vector3.LEFT * grid_size.x * cell_size.x, Vector3.FORWARD * grid_size.y * cell_size.y, grid_size, Color.RED)

	_draw_tiles()


func tile_to_global_position(tile_position: Vector2i) -> Vector3:
	var offset_x := (tile_position.x - grid_size.x / 2.0 + 0.5) * cell_size.x
	var offset_z := (tile_position.y - grid_size.y / 2.0 + 0.5) * cell_size.y
	return global_position + Vector3(offset_x, 0, offset_z)


func _draw_tiles():
	for tile in _tiles.keys():
		var tile_global_position: Vector3 = tile_to_global_position(tile)
		DebugDraw3D.draw_sphere(tile_global_position, cell_size.x /2, Color.CYAN)
