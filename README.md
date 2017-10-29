# GD2_Tiled_SceneBuilder

Create scene from Tiled tmx file, using extended vnen.tiled_importer.


# Predefined entities list:

- COIN

|item_amount|type=int|default=1|
|-|-|-|
|item_id|type=int|default=0

- AMMO

|item_amount|type=int|default=1|
| - | - | - |
|item_id|type=int|default=0


- HEALTH

|name|type|default|comments|
|-|-|-|-|
| item_amount | int | 100 | amount value on pickup|
|-|-|-|-|
|item_id|int|0|
|-|-|-|-|
|item_limit|int|100|


 </objecttype>
 <objecttype name="START_POINT" color="#55aa00">
|item_id|int|0"/>
 </objecttype>
 <objecttype name="END_POINT" color="#55aa00">
|item_id|int|0"/>
|next_scene|string|&lt;undefined&gt;"/>
 </objecttype>
 <objecttype name="KEY" color="#0000ff">
|item_id|int|0"/>
|key_name|string|&lt;set key name&gt;"/>
 </objecttype>
 <objecttype name="POWER_UP_JUMP" color="#5500ff">
|item_id|int|0"/>
|new_jump_force|int|300"/>
|time_to_off|int|10"/>
 </objecttype>
 <objecttype name="POWER_UP_SPEED" color="#5500ff">
|item_id|int|0"/>
|new_speed|int|300"/>
|time_to_off|int|10"/>
 </objecttype>
 <objecttype name="POWER_UP_GRAVITY" color="#5500ff">
|item_id|int|0"/>
|new_gravity_x|int|0"/>
|new_gravity_y|int|1000"/>
|time_to_off|int|10"/>
 </objecttype>
 <objecttype name="MSG_INFO" color="#ffffff">
|info_text|string|&lt;undefined&gt;"/>
|item_id|int|0"/>
|panel_offset_x|int|0"/>
|panel_offset_y|int|0"/>
 </objecttype>
 <objecttype name="TELEPORT" color="#a0a0a4">
|item_id|int|0"/>
|key_name|string|&lt;undefined&gt;"/>
|need_key|bool|false"/>
|on_key|string|key_up"/>
|target_name|string|&lt;undefined&gt;"/>
|teleport_type|int|0"/>
 </objecttype>
 <objecttype name="occluder" color="#f5f5ff"/>
 <objecttype name="ENEMY_H" color="#ff0000">
|armor|int|50"/>
|damage|int|10"/>
|item_id|int|0"/>
|speed|int|20"/>
 </objecttype>
 <objecttype name="SWITCH" color="#a0a0a4">
|callback|string|&lt;undefined&gt;"/>
|item_id|int|0"/>
|key_name|string|up_key"/>
|set_state|bool|true"/>
|switch_mode|string|&lt;on_enter/on_key&gt;"/>
|target_name|string|&lt;undefined&gt;"/>
 </objecttype>
</objecttypes>
