# GD2_Tiled_SceneBuilder

Create scene from Tiled tmx file, using extended vnen.tiled_importer.


# Predefined entities list:

- **COIN**

 - **item_amount** type=int default=1<br>
 - **item_id** type= int default= 0 <br><br>

- **AMMO**

  - **item_amount** type= int default= 10<br>
  - **item_id** type= int default= 0 <br><br>

- **HEALTH**

  - **item_amount** type= int default= 100<br>
  - **item_id** type= int default= 0 <br>
  - **item_limit** type= int default= 100 <br><br>


- **START_POINT**

  - **item_id** type= int default= 0 <br><br>

- **END_POINT**

  - **item_id** type= int default= 0<br>
  - **next_scene** type= string default= undefined<br><br>

- **KEY**

  - **item_id** type= int default= 0<br>
  - **key_name** type= string default= <set key name> <br><br>

- **POWER_UP_JUMP**

  - **item_id** type= int default= 0 <br>
  - **new_jump_force** type= int default= 300 <br>
  - **time_to_off** type= int default= 10 <br><br>

- **POWER_UP_SPEED**
  - **item_id** type= int default= 0
  - **new_speed** type= int default= 300
  - **time_to_off** type= int default= 10 <br><br>

- **POWER_UP_GRAVITY**

  - **item_id** type= int default= 0 <br>
  - **new_gravity_x** type= int default= 0 <br>
  - **new_gravity_y** type= int default= 1000 <br>
  - **time_to_off** type= int default= 10 <br><br>

- **MSG_INFO**

  - **info_text** type= string default= undefined <br>
  - **item_id** type= int default= 0 <br>
  - **panel_offset_x** type= int default= 0 <br>
  - **panel_offset_y** type= int default= 0 <br><br>

- **TELEPORT**

  - **item_id** type= int default= 0 <br>
  - **key_name** type= string default= undefined <br>
  - **need_key** type= bool default= false <br>
  - **on_key** type= string default= key_up <br>
  - **target_name** type= string default= undefined <br>
  - **teleport_type** type= int default= 0 <br><br>

- **occluder**

- **ENEMY_H**

  - **armor** type= int default= 50 <br>
  - **damage** type= int default= 10 <br>
  - **item_id** type= int default= 0 <br>
  - **speed** type= int default= 20 <br><br>

- **ENEMY_V**

  - **armor** type= int default= 50 <br>
  - **damage** type= int default= 10 <br>
  - **item_id** type= int default= 0 <br>
  - **speed** type= int default= 20 <br>
  - **top_end_point** type= int default= 16 <br>
  - **bottom_end_point** type= int default= 16 <br><br>


- **SWITCH**

  - **callback** type= string default = undefined <br>
  - **item_id** type= int default= 0 <br>
  - **key_name** type= string default= up_key <br>
  - **set_state** type= bool default= true <br>
  - **switch_mode** type= string default= <on_enter/on_key> <br>
  - **target_name** type= string default = undefined<br><br>

- **LIGHT**

  - **color** type= color default= #ffffffff <br>
  - **item_id** type= int default= 0 <br><br>

- **GRANADE**

 - **item_amount** type= int default= 1 <br>
 - **item_id** type= int default= 0 <br><br>

- **PLATFORM_H**

  - **item_id** type= int default= 0 <br>
  - **left_end_point** type= int default= 0 <br>
  - **right_end_point** type= int default= 0 <br>
  - **speed** type= int default= 100 <br><br>

- **PLATFORM_V**

  - **item_id** type= int default= 0 <br>
  - **top_end_point** type= int default= 0 <br>
  - **bottom_end_point** type= int default= 0 <br>
  - **speed** type= int default= 100 <br><br>

- **HAZARD_x (x=L,R,U,D)**

  - **item_id** type= int default= 0 <br>
  - **damage** type= int default= 100 <br><br>
