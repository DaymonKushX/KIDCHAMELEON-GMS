///scr_player_plastic()

myLeftPlastic = instance_place(bbox_left,y,objBlockPlastic);
if myLeftPlastic > 0 {hInfluence = 7;}

myRightPlastic = instance_place(bbox_right,y,objBlockPlastic);
if myRightPlastic > 0 {hInfluence = -7;}

myDownPlastic = instance_place(x,bbox_bottom+2,objBlockPlastic);
if myDownPlastic > 0 {if KeyJumpHold {vInfluence=-7}else{vInfluence=0}state = jumping;}
