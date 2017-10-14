import brl.blitz
import brl.freeaudioaudio
import brl.wavloader
import brl.glmax2d
LoadSounds%()="bb_LoadSounds"
PlaySound2:TChannel(snd:TSound,freq#=1#,pan#=0#,vol#=1#)="bb_PlaySound2"
SetPanAndVolume%(ch:TChannel,pan#,vol#)="bb_SetPanAndVolume"
AdjustVolume%()="bb_AdjustVolume"
StopLoopingSounds%()="bb_StopLoopingSounds"
StartMusic%(song%)="bb_StartMusic"
StopMusic%()="bb_StopMusic"
SetMusicVolume%()="bb_SetMusicVolume"
sfxvol#&=mem:f("bb_sfxvol")
musicvol#&=mem:f("bb_musicvol")
sunloopchan:TChannel&[]&=mem:p("bb_sunloopchan")
soundset%&=mem("bb_soundset")
nme_born_snd:TSound&=mem:p("bb_nme_born_snd")
nme1_born_snd:TSound&=mem:p("bb_nme1_born_snd")
nme2_born_snd:TSound&=mem:p("bb_nme2_born_snd")
nme3_born_snd:TSound&=mem:p("bb_nme3_born_snd")
nme4_born_snd:TSound&=mem:p("bb_nme4_born_snd")
nme5_born_snd:TSound&=mem:p("bb_nme5_born_snd")
nme5_loop_snd:TSound&=mem:p("bb_nme5_loop_snd")
nme5_shrink_snd:TSound&=mem:p("bb_nme5_shrink_snd")
nme5_grow_snd:TSound&=mem:p("bb_nme5_grow_snd")
nme5_explode_snd:TSound&=mem:p("bb_nme5_explode_snd")
nme5_killed_snd:TSound&=mem:p("bb_nme5_killed_snd")
nme6_born_snd:TSound&=mem:p("bb_nme6_born_snd")
nme6_tailexplode_snd:TSound&=mem:p("bb_nme6_tailexplode_snd")
nme6_tailhit_snd:TSound&=mem:p("bb_nme6_tailhit_snd")
nme7_born_snd:TSound&=mem:p("bb_nme7_born_snd")
nme7_shield_snd:TSound&=mem:p("bb_nme7_shield_snd")
nme8_born_snd:TSound&=mem:p("bb_nme8_born_snd")
ge_born_snd:TSound&=mem:p("bb_ge_born_snd")
ge_hit_snd:TSound&=mem:p("bb_ge_hit_snd")
ge_killed_snd:TSound&=mem:p("bb_ge_killed_snd")
le_born_snd:TSound&=mem:p("bb_le_born_snd")
le_hit_snd:TSound&=mem:p("bb_le_hit_snd")
le_killed_snd:TSound&=mem:p("bb_le_killed_snd")
pu_collect_snd:TSound&=mem:p("bb_pu_collect_snd")
get_ready_snd:TSound&=mem:p("bb_get_ready_snd")
player_hit_snd:TSound&=mem:p("bb_player_hit_snd")
shot_born_snd:TSound&=mem:p("bb_shot_born_snd")
shot_hit_wall_snd:TSound&=mem:p("bb_shot_hit_wall_snd")
game_over_snd:TSound&=mem:p("bb_game_over_snd")
super_bomb_snd:TSound&=mem:p("bb_super_bomb_snd")
extra_life_snd:TSound&=mem:p("bb_extra_life_snd")
extra_bomb_snd:TSound&=mem:p("bb_extra_bomb_snd")
multiplier_increase_snd:TSound&=mem:p("bb_multiplier_increase_snd")
bonus_born_snd:TSound&=mem:p("bb_bonus_born_snd")
high_score_snd:TSound&=mem:p("bb_high_score_snd")
quarkhitsound:TSound&=mem:p("bb_quarkhitsound")
quarkhit2sound:TSound&=mem:p("bb_quarkhit2sound")
shieldwarningsnd:TSound&=mem:p("bb_shieldwarningsnd")
