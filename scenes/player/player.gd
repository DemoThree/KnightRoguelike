extends CharacterBody2D
# 创建一个速度常量
const MAX_SPEED = 200


func _ready():
		pass
		# Engine.max_fps = 20

func _process(delta):
		# 设置变量获取按键的二维向量
		var movement_vector = get_movement_vector()
		# 将二维向量归一化
		var direction = movement_vector.normalized()
		# 设置角色移动的向量速度
		velocity = direction * MAX_SPEED
		print(velocity)
		# 让角色移动起来
		move_and_slide()
		
func get_movement_vector():
		
		#创建变量x_movement用来获取是否在X轴向左还是向右移动
		var x_movement = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
		
		#创建变量y_movement用来获取是否在X轴向上还是向下移动
		var y_movement = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
		
		return Vector2(x_movement,y_movement) #返回x和y的值
