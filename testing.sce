scenario = "One-Back-Arm"; # This name is recorded in the log file
scenario_type = trials;
response_matching = simple_matching;
response_logging = log_all;

active_buttons = 3;
#button_codes = 1, 2, 3; # These values will be used to code participant responses 
#target_button_codes = 0, 0, 2;
button_codes = 0, 0, 2;
target_button_codes = 0, 0, 1;

write_codes = true; # Enables triggering via the parallel port                
pulse_width = 10; # Trigger pulses are set to 10 msec in duration
response_port_output = true; # Enables trigger codes for response buttons

default_font_size = 56;
default_font = "Arial";
default_background_color = 0,0,0; #Black#
default_text_color = 255,255,255; #White#

begin;

# Instructions for block
trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;

	picture {
		text {font_size = 25; caption = "Heute wirst Du auf dem Arm gestreichelt.

		Wenn Du bereit bist zu beginnen, druecke bitte die 'Enter' Taste."; };
		x = 0;
		y = 0;
	};

	time = 0;
}instructions_notouch;

#500ms fixation at beginning of trial
trial {
	trial_duration=500;
	trial_type=fixed;

	picture {
		text {font_size = 56; caption = "+";};
		x = 0;
		y = 0;
	};

	time = 0;
}fix;

#Break after 1/3 trials (1 loop)
trial {
	trial_duration = forever;
	trial_type = specific_response;
	terminator_button = 3;

	picture {
		text {font_size = 25; caption = "Ende des Blocks

		Bitte druecke 'Enter' um fortzufahren";
		};
		x = 0;
		y = 0;
	};

	time = 0;
}break_trials;

#List of dummy sounds (2 used at the beginning of each block)
array {
	sound { wavefile {filename = "Neutral_TLSM.wav";}; default_port_code = 10; description = "dummy"; } stim;
	sound { wavefile { filename = "Neutral_6.wav"; }; };
	sound { wavefile { filename = "Neutral_61.wav"; }; };
}soundListD;

#entire sound array 
array {
	TEMPLATE "declaresounds.tem" {
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
		"Neutral_Joyce_rot.wav";
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
		"Neutral_Rena.wav";
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
		"Surprise_TLSM_rot.wav";
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
		"Surprise_TKH.wav";
	};
}soundList;

#neutral original
array {
	TEMPLATE "declaresounds.tem" {
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
		"Neutral_Rena.wav";
	};
}repeat1;

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
		"Neutral_Joyce_rot.wav"; 
	};
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
		"Surprise_TKH.wav"; 
	};
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
		"Surprise_TLSM_rot.wav"; 
	};
}repeat4;

#Each trial has fixation cross and sound, and lasts as long as each sound
picture {
	text {
		font_size = 56;
		caption = "+";
	};
	x = 0;
	y = 0;
}trialFix;

trial {
	trial_duration = stimuli_length;
	trial_type = fixed;

	picture trialFix;
	target_button = 3;

	stimulus_event {
		sound stim;
		code = "repeat";
		port_code = 11;
	}eventR;
}trialR;

trial {
	trial_duration = stimuli_length;
	trial_type = fixed;

	picture trialFix;
	target_button = 3;

	stimulus_event {
		sound stim;
		code = "dummy";
		port_code = 10;
	}event1;
}trial1;

#inter-trial interval
trial {
	trial_type = fixed;
	trial_duration = 11;
	picture {} default;
	target_button = 3;
}ITI;


#-------------------------------------------------------------------------


begin_pcl;

output_port my_port = output_port_manager.get_port(1);

#arrays for port codes for stimuli
array<int> soundPortCodes[108] = {
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,

	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	200,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	100,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	201,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101,
	101
};

sub bool isNextSoundRotated(array<int, 1> list, int currentPointer)
begin;
	return false;
end;

sub bool isRepeat
begin;
	return false;
end;

sub array<sound, 1> getShuffledRepeated
begin;
	array<sound> firstSet[1];
	array<sound> secSet[1];
	array<sound> thirdSet[1];	
	array<sound> fourthSet[1];
	
	firstSet.assign(repeat1);
	secSet.assign(repeat2);
	thirdSet.assign(repeat3);
	fourthSet.assign(repeat4);
	
	firstSet.shuffle();
	secSet.shuffle();
	thirdSet.shuffle();
	fourthSet.shuffle();
	
	firstSet.resize(6);
	secSet.resize(6);
	thirdSet.resize(6);
	fourthSet.resize(6);
	
	firstSet.append(secSet);
	firstSet.append(thirdSet);
	firstSet.append(fourthSet);
	
	return firstSet;
end;

sub playSounds(array<sound, 1> repeatedSounds, array<int, 1> shuffledList)
begin;
	int count = repeatedSounds.count();
	int pointer = 1;
	int repeatedPointer = 1;
	
	loop until pointer > count
	begin;
		sound mainSound = soundList[shuffledList[pointer]];

		if pointer == 1 then
			
		end;
		
		soundList[pointer].get_wavefile().unload();
		pointer = pointer + 1;
	end;
end;

sub presentIndividualSound(int soundIndex)
begin;
	fix.present();
	ITI.set_duration(random(1000, 3000));
	array<int> buttonCodes[3] = {0, 0, 2};
	response_manager.set_target_button_codes(buttonCodes);
	
	soundList[soundIndex].get_wavefile().load();
	event1.set_stimulus(soundList[soundIndex]);
	event1.set_port_code(soundPortCodes[soundIndex]);
	event1.set_event_code(soundList[soundIndex].description());
	event1.set_target_button(0);
	event1.set_response_active(true);
	
	trial1.present();
	response_manager.set_target_button_codes(buttonCodes);
	ITI.present();
end;

sub presentRepeatedSound(int soundIndex)
begin;
	fix.present();
	ITI.set_duration(random(1000, 3000));
	array<int> repeatedCodes[3] = {0, 0, 1};
	response_manager.set_target_button_codes(repeatedCodes);
	
	eventR.set_stimulus(soundList[soundIndex]);
	eventR.set_port_code(11);
	
	trialR.present();
	response_manager.set_target_button_codes(repeatedCodes);
	ITI.present();
end;

sub presentDummySounds
begin;
	loop int d = 1 until d > 2
	begin;
		fix.present();
		soundListD[d].get_wavefile().load();
		event1.set_stimulus(soundListD[d]);
		ITI.set_duration(random(1000, 3000));
		trial1.present();
		ITI.present();
		soundListD[d].get_wavefile().unload();
		d = d + 1;
	end;
end;

sub mainLoop
begin;
	presentDummySounds();
	
	loop int block = 1 until block > 3
	begin;	
		#shuffle sound list array reference
		array<int> shuffledList[108];
		shuffledList.fill(1, 108, 1, 1);
		shuffledList.shuffle();
		
		array<sound> repeatedSounds[] = getShuffledRepeated();
		playSounds(repeatedSounds, shuffledList);
	end;
end;
