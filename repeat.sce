active_buttons = 3;
#button_codes = 1, 2, 3; # These values will be used to code participant responses 
#target_button_codes = 0, 0, 2;
button_codes = 0, 0, 2;
target_button_codes = 0, 0, 1;

begin;

#neutral_orig
array{
TEMPLATE "declaresounds.tem"{
	file;
"Neutral_TKH.wav";
"Neutral_LS.wav";
"Neutral_Edward.wav";
"Neutral_NXR.wav";
"Neutral_46.wav";
"Neutral_SG.wav";
"Neutral_Joyce.wav";
"Neutral_58.wav";
"Neutral_ML.wav";
"Neutral_Elizabeth.wav";
"Neutral_CW.wav";
"Neutral_SH.wav";
"Neutral_Daryl.wav";
"Neutral_Janvin.wav";
"Neutral_42.wav";
"Neutral_55.wav";
"Neutral_59.wav";
"Neutral_CC.wav";
"Neutral_CKH.wav";
"Neutral_DK.wav";
"Neutral_Ernest.wav";
"Neutral_GC.wav";
"Neutral_GZ.wav";
"Neutral_Madeline.wav";
"Neutral_MSC.wav";
"Neutral_MY.wav";
"Neutral_Rena.wav"; };
}repeat;

#neutral_rot
array{
TEMPLATE "declaresounds.tem"{
	file;
"Neutral_42_rot.wav";
"Neutral_55_rot.wav";
"Neutral_59_rot.wav";
"Neutral_CC_rot.wav";
"Neutral_CKH_rot.wav";
"Neutral_DK_rot.wav";
"Neutral_Ernest_rot.wav";
"Neutral_GC_rot.wav";
"Neutral_GZ_rot.wav";
"Neutral_Madeline_rot.wav";
"Neutral_MSC_rot.wav";
"Neutral_MY_rot.wav";
"Neutral_Rena_rot.wav";
"Neutral_ML_rot.wav";
"Neutral_Elizabeth_rot.wav";
"Neutral_SH_rot.wav"; 
"Neutral_NXR_rot.wav";
"Neutral_CW_rot.wav";
"Neutral_TKH_rot.wav";
"Neutral_Janvin_rot.wav";
"Neutral_58_rot.wav";
"Neutral_Edward_rot.wav";
"Neutral_Daryl_rot.wav";
"Neutral_LS_rot.wav";
"Neutral_46_rot.wav";
"Neutral_SG_rot.wav";
"Neutral_Joyce_rot.wav"; };
}repeat2;

#surprise_orig
array{
TEMPLATE "declaresounds.tem"{
	file;
"Surprise_45.wav";
"Surprise_59.wav";
"Surprise_6.wav";
"Surprise_CC.wav";
"Surprise_CW.wav";
"Surprise_Daryl.wav";
"Surprise_Janvin.wav";
"Surprise_Joyce.wav";
"Surprise_LS.wav";
"Surprise_ML.wav";
"Surprise_Rena.wav";
"Surprise_SG.wav";
"Surprise_SH.wav";
"Surprise_TLSM.wav";	
"Surprise_CKH.wav";
"Surprise_Ernest.wav";
"Surprise_GZ.wav";
"Surprise_60.wav";
"Surprise_Elizabeth.wav";
"Surprise_Madeline.wav";
"Surprise_GC.wav";
"Surprise_MY.wav";
"Surprise_Edward.wav";
"Surprise_55.wav";
"Surprise_NXR.wav";
"Surprise_MSC.wav";
"Surprise_TKH.wav"; };
}repeat3;

#surprise_rot
array{
TEMPLATE "declaresounds.tem"{
	file;	
"Surprise_Ernest_rot.wav";
"Surprise_TKH_rot.wav";
"Surprise_55_rot.wav";
"Surprise_Madeline_rot.wav";
"Surprise_CKH_rot.wav";
"Surprise_60_rot.wav";
"Surprise_GZ_rot.wav";
"Surprise_GC_rot.wav";
"Surprise_Edward_rot.wav";
"Surprise_MY_rot.wav";
"Surprise_Elizabeth_rot.wav";
"Surprise_NXR_rot.wav";
"Surprise_MSC_rot.wav";
"Surprise_45_rot.wav";
"Surprise_59_rot.wav";
"Surprise_6_rot.wav";
"Surprise_CC_rot.wav";
"Surprise_CW_rot.wav";
"Surprise_Daryl_rot.wav";
"Surprise_Janvin_rot.wav";
"Surprise_Joyce_rot.wav";
"Surprise_LS_rot.wav";
"Surprise_ML_rot.wav";
"Surprise_Rena_rot.wav";
"Surprise_SG_rot.wav";
"Surprise_SH_rot.wav";
"Surprise_TLSM_rot.wav"; };
}repeat4;

begin_pcl;

#Create a new array for repeated sounds

repeat.shuffle();
repeat.resize(6);

repeat2.shuffle();
repeat2.resize(6);

repeat3.shuffle();
repeat3.resize(6);

repeat4.shuffle();
repeat4.resize(6);

repeat.append(repeat2);
repeat.append(repeat3);
repeat.append(repeat4);

sub

loop int i = 1 until i > repeat.count()
	begin;
	term.print_line(i);
	return "filename";
	i = i + 1 ;
end


