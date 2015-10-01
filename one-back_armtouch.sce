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
		text {font_size = 20; caption = "Heute wirst Du auf dem Arm gestreichelt.

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
		text {font_size = 20; caption = "Du kannst jetzt eine Pause machen.\n Bitte informiere die Versuchsleiterin, wenn Du weiter machen moechtest.";
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

# checks if the next sound or the last 2 sounds are paired-rotated 
# 
# @param
#	prev: name of the prev sound that was played
#	curr: name of the current sound that has to be played
#
# @return
#		true if any of the above mentioned conditions are fulfilled
sub bool isNextSoundRotated(string prev, string curr)
begin;
	array<string> prevArray[1];
	array<string> currArray[1];
	prev.split(".wav", prevArray);
	curr.split(".wav", currArray);

	string prevPath = prevArray[1];
	string currPath = currArray[1];
	
#	term.print_line("-------------------------");
#	term.print_line(prevPath);
#	term.print_line(currPath);
#	term.print_line("-------------------------");

	if prevPath.find(currPath) != 0 || currPath.find(prevPath) != 0 then
		return true;
	end;

	return false;
end;

# this subroutine goes through the repeated sounds array and checks if the array
# of repeated sounds contains this sound to be checked
#
# @param
#	repeatedSounds: list containing sounds to be repeated
#	soundToBeChecked: sound that has to be checked if it is repeated
#
# @return
# 		true - if the sound has to be repeated
#		false - if the sound does not have to be repeated
sub bool isRepeat(array<sound, 1> repeatedSounds, sound soundToBeChecked)
begin;
	
	loop int i = 1 until i > repeatedSounds.count()
	begin;
		string check = soundToBeChecked.get_wavefile().filename();
		string repeat = repeatedSounds[i].get_wavefile().filename();
		
		if check == repeat then
			return true;
		end;
		i = i + 1;
	end;
	return false;
end;

# this sub routine creates a list of sounds to be repeated
# it pulls sounds from the 4 different lists and performs shuffling to introduce
# random selection on the repeated sounds
# @return
#		an array of sounds to be repeated
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

# sub routine that does the checking and ensures that the next sound to be played
# is not a rotated sound
#
# example:
#	soundsToBePlayed = ("1.wav", "1_rot.wav", "2.wav", "2_rot.wav")
#	currently playing the 2nd sound
#	since it is a rotated sound, array will be shuffled from the 2nd element to the last
#	
# @param
#	list: list containing shuffled sound indexes to the soundList
#	pointer: current sound number that is going to be played
#
# @return
# 	a new array that is shuffled from the index if there is a rotated sound
#	next
sub array<int, 1> ensureNextNotRotated(array<int, 1> list, int pointer)
begin;
	array<int> copiedList[1];
	copiedList.assign(list);

	string prevSoundName = soundList[copiedList[pointer - 1]].get_wavefile().filename();
	string currSoundName = soundList[copiedList[pointer]].get_wavefile().filename();
	string secLastSoundName = soundList[copiedList[list.count() - 1]].get_wavefile().filename();
	string lastSoundName = soundList[copiedList[copiedList.count()]].get_wavefile().filename();
	
	loop until
		isNextSoundRotated(prevSoundName, currSoundName) == false && isNextSoundRotated(secLastSoundName, lastSoundName) == false
	begin;
		copiedList.shuffle(pointer, list.count());
		prevSoundName = soundList[copiedList[pointer - 1]].get_wavefile().filename();
		currSoundName = soundList[copiedList[pointer]].get_wavefile().filename();
		secLastSoundName = soundList[copiedList[list.count() - 1]].get_wavefile().filename();
		lastSoundName = soundList[copiedList[copiedList.count()]].get_wavefile().filename();
	end;

	return copiedList;
end;

# sub routine for looping through the 108 sounds once
# @param
#	repeatedSounds: an array repeated sounds with "sound" type
#	shuffledList: contains a shuffled int array
sub playSounds(array<sound, 1> repeatedSounds, array<int, 1> shuffledList)
begin;
	int count = shuffledList.count();
	int pointer = 1;
	
	loop until pointer > count
	begin;
		term.print("pointer: "); term.print_line(pointer);

		# only needs to check if the next is rotated starting from the 2nd sound onwards
		if pointer > 1 then
			shuffledList = ensureNextNotRotated(shuffledList, pointer);
		end;
		
		sound currentSound = soundList[shuffledList[pointer]];

		presentIndividualSound(shuffledList[pointer]);
		
		if isRepeat(repeatedSounds, currentSound) then
			presentRepeatedSound(shuffledList[pointer]);
		end;
		
		soundList[shuffledList[pointer]].get_wavefile().unload();
		pointer = pointer + 1;
	end;
end;



# sub routine for presenting the dummy sounds
sub presentDummySounds
begin;
	soundListD.shuffle();
	
	loop int d = 1 until d > 2
	begin;
		fix.present();
		soundListD[d].get_wavefile().load();
		event1.set_stimulus(soundListD[d]);
		event1.set_event_code("dummy");
		ITI.set_duration(random(1000, 3000));
		trial1.present();
		ITI.present();
		soundListD[d].get_wavefile().unload();
		d = d + 1;
	end;
end;

sub printRepeatList(array<sound, 1> repeatedList)
begin;

	loop int i = 1 until i > repeatedList.count()
	begin;
		string repeatedSound = repeatedList[i].get_wavefile().filename();
		term.print_line(repeatedSound);
		i = i + 1;
	end;
end;

# this sub routine does the main loop of each block
sub mainLoop
begin;
	
	loop int block = 1 until block > 3
	begin;
		#shuffle sound list array reference
		array<int> shuffledList[108];
		shuffledList.fill(1, 108, 1, 1);
		shuffledList.shuffle();
		
		array<sound> repeatedSounds[] = getShuffledRepeated();
		printRepeatList(repeatedSounds);
		
		presentDummySounds();
		playSounds(repeatedSounds, shuffledList); 		# this is where the 108 sounds are played
		break_trials.present();
		block = block + 1;
	end;
end;

mainLoop();
