# GD2_Tiled_SceneBuilder

Create scene from Tiled tmx file, using extended vnen.tiled_importer.


# Predefined entities list:

- COIN

    item_amount     type=int    default=1
    item_id         type=int    default=0
 
- AMMO

    item_amount     type=int    default=10
    item_id         type=int    default=0
 
 <objecttype name="HEALTH" color="#ff0000">
  <property name="item_amount" type="int" default="100"/>
  <property name="item_id" type="int" default="0"/>
  <property name="item_limit" type="int" default="100"/>
 </objecttype>
 <objecttype name="START_POINT" color="#55aa00">
  <property name="item_id" type="int" default="0"/>
 </objecttype>
 <objecttype name="END_POINT" color="#55aa00">
  <property name="item_id" type="int" default="0"/>
  <property name="next_scene" type="string" default="&lt;undefined&gt;"/>
 </objecttype>
 <objecttype name="KEY" color="#0000ff">
  <property name="item_id" type="int" default="0"/>
  <property name="key_name" type="string" default="&lt;set key name&gt;"/>
 </objecttype>
 <objecttype name="POWER_UP_JUMP" color="#5500ff">
  <property name="item_id" type="int" default="0"/>
  <property name="new_jump_force" type="int" default="300"/>
  <property name="time_to_off" type="int" default="10"/>
 </objecttype>
 <objecttype name="POWER_UP_SPEED" color="#5500ff">
  <property name="item_id" type="int" default="0"/>
  <property name="new_speed" type="int" default="300"/>
  <property name="time_to_off" type="int" default="10"/>
 </objecttype>
 <objecttype name="POWER_UP_GRAVITY" color="#5500ff">
  <property name="item_id" type="int" default="0"/>
  <property name="new_gravity_x" type="int" default="0"/>
  <property name="new_gravity_y" type="int" default="1000"/>
  <property name="time_to_off" type="int" default="10"/>
 </objecttype>
 <objecttype name="MSG_INFO" color="#ffffff">
  <property name="info_text" type="string" default="&lt;undefined&gt;"/>
  <property name="item_id" type="int" default="0"/>
  <property name="panel_offset_x" type="int" default="0"/>
  <property name="panel_offset_y" type="int" default="0"/>
 </objecttype>
 <objecttype name="TELEPORT" color="#a0a0a4">
  <property name="item_id" type="int" default="0"/>
  <property name="key_name" type="string" default="&lt;undefined&gt;"/>
  <property name="need_key" type="bool" default="false"/>
  <property name="on_key" type="string" default="key_up"/>
  <property name="target_name" type="string" default="&lt;undefined&gt;"/>
  <property name="teleport_type" type="int" default="0"/>
 </objecttype>
 <objecttype name="occluder" color="#f5f5ff"/>
 <objecttype name="ENEMY_H" color="#ff0000">
  <property name="armor" type="int" default="50"/>
  <property name="damage" type="int" default="10"/>
  <property name="item_id" type="int" default="0"/>
  <property name="speed" type="int" default="20"/>
 </objecttype>
 <objecttype name="SWITCH" color="#a0a0a4">
  <property name="callback" type="string" default="&lt;undefined&gt;"/>
  <property name="item_id" type="int" default="0"/>
  <property name="key_name" type="string" default="up_key"/>
  <property name="set_state" type="bool" default="true"/>
  <property name="switch_mode" type="string" default="&lt;on_enter/on_key&gt;"/>
  <property name="target_name" type="string" default="&lt;undefined&gt;"/>
 </objecttype>
</objecttypes>



