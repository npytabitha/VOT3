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
trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 25; caption = "Dieses ist ein Block in dem Du auf dem Arm gestreichelt wirst.

Wenn Du bereit bist zu beginnen, druecke bitte die 'Enter' Taste.";
};
x = 0; y = 0; 
};

time = 0;
}instructions_notouch;

#500ms fixation at beginning of trial
trial{
trial_duration=500;
trial_type=fixed;

picture{
text{font_size = 56; caption = "+";
};
x = 0; y = 0; 
};

time = 0;
}fix;

#List of dummy sounds (2 used at the beginning of each block)
array{
sound { wavefile { filename = "Neutral_TLSM.wav"; }; default_port_code =10; description = "dummy"; } stim;
sound { wavefile { filename = "Neutral_6.wav"; }; };
sound { wavefile { filename = "Neutral_61.wav"; }; };
}soundlistD;

#First half of stimuli (no sound appears with its rotated counterpart in each half)
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
"Neutral_Rena_rot.wav";};
}soundlist1;

#Second half of stimuli
array{
TEMPLATE "declaresounds.tem"{
	file;
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
"Surprise_TKH.wav"; };
}soundlist2;

#Each trial has fixation cross and sound, and lasts as long as each sound
picture{
text{font_size = 56; caption = "+";
};
x = 0; y = 0; 
}trialfix;

trial{
trial_duration=stimuli_length;
trial_type=fixed;

picture trialfix;
target_button = 3;

stimulus_event{
sound stim;
code = "repeat";
port_code = 11;
}eventr;
}trialr; 

trial{
trial_duration=stimuli_length;
trial_type=fixed;

picture trialfix;
target_button = 3;

stimulus_event{
sound stim;
code = "dummy";
port_code = 10;
}event1;
}trial1; 


#inter-trial interval
trial {
    trial_type = fixed;
    trial_duration = 1; #we will change this using PCL
    picture {} default;
	 target_button = 3;
} ITI;


#------------------------------------------------------------------------
begin_pcl;

output_port my_port = output_port_manager.get_port(1);

#arrays to assign port codes to stimuli
array<int> soundCode1[54][2] = { 
{1,100},
{2,100},
{3,100},
{4,100},
{5,100},
{6,100},
{7,100},
{8,100},
{9,100},
{10,100},
{11,100},
{12,100},
{13,100},
{14,100},
{15,201},
{16,201},
{17,201},
{18,201},
{19,201},
{20,201},
{21,201},
{22,201},
{23,201},
{24,201},
{25,201},
{26,201},
{27,201},
{28,101},
{29,101},
{30,101},
{31,101},
{32,101},
{33,101},
{34,101},
{35,101},
{36,101},
{37,101},
{38,101},
{39,101},
{40,101},
{41,101},
{42,200},
{43,200},
{44,200},
{45,200},
{46,200},
{47,200},
{48,200},
{49,200},
{50,200},
{51,200},
{52,200},
{53,200},
{54,200}
};

array<int> soundCode2[54][2] = { 
{1,200},
{2,200},
{3,200},
{4,200},
{5,200},
{6,200},
{7,200},
{8,200},
{9,200},
{10,200},
{11,200},
{12,200},
{13,200},
{14,200},
{15,100},
{16,100},
{17,100},
{18,100},
{19,100},
{20,100},
{21,100},
{22,100},
{23,100},
{24,100},
{25,100},
{26,100},
{27,100},
{28,201},
{29,201},
{30,201},
{31,201},
{32,201},
{33,201},
{34,201},
{35,201},
{36,201},
{37,201},
{38,201},
{39,201},
{40,201},
{41,201},
{42,101},
{43,101},
{44,101},
{45,101},
{46,101},
{47,101},
{48,101},
{49,101},
{50,101},
{51,101},
{52,101},
{53,101},
{54,101}
};

#Make an array of random ints from 1 - 108 for repeated trials. 

array<int> oneback_trials [108];
oneback_trials.fill(1,108,1,1);
oneback_trials.shuffle();
oneback_trials.resize(22);

#Subroutine used by the sort subroutine to insert a value in an array

sub array<int, 1> insert ( int value, array<int, 1>& arr, int place )

begin

   array<int>temp[0];

   loop int i = 1 until i > arr.count()
   begin

      if i == place then
         temp.add( value )
      end;

      temp.add( arr[i] );
      i = i + 1;
   end;

   return temp

end;


#This subroutine sorts the array.

sub array<int, 1> sort ( array<int, 1>& my_array )

begin

   array<int>temp[0];

   if my_array.count() > 0 then

      temp.add(my_array[1]);

      loop int i = 2 until i > my_array.count()
		begin

         bool inserted = false;
         loop int j = 1 until j > temp.count() || inserted

         begin

            if my_array[i] < temp[j] then
               temp.assign( insert( my_array[i], temp, j ) );
               inserted = true;
            end;

            j = j + 1;
         end;

         if !inserted then 
				temp.add( my_array[i] ) end;

         i = i + 1;
      end;
   end;

   return temp

end;

term.print("repeated trials:\n");

#Call the subroutine to sort the array and assigns back to original array.
oneback_trials.assign( sort(oneback_trials) );

#print the values to the terminal.
loop int i = 1 until i > oneback_trials.count()

begin
   term.print( oneback_trials[i] );
   term.print( "\t" );
   i = i + 1;
end;

instructions_notouch.present();

soundlistD.shuffle();
loop int d = 1 
until d > 2
begin
	fix.present(); #500ms fixation
   soundlistD[d].get_wavefile().load();
   event1.set_stimulus( soundlistD[d] );
	ITI.set_duration( random(1000,3000) );
	trial1.present();
	ITI.present(); #inter-trial interval (2-4s)
   soundlistD[d].get_wavefile().unload();
   d = d + 1;
end;

soundCode1.shuffle();
soundCode2.shuffle();

begin
int x = random(1,2);
if x == 1 then

#present first half of stimuli
term.print( "\nfirst half" );
int r = 1;
loop int i = 1 
until i > soundlist1.count()
begin
	fix.present(); #500ms fixation
   soundlist1[int(soundCode1[i][1])].get_wavefile().load();
   event1.set_stimulus(soundlist1[int(soundCode1[i][1])]);
	event1.set_port_code(int(soundCode1[i][2]));
	event1.set_event_code(soundlist1[int(soundCode1[i][1])].description());
	ITI.set_duration( random(1000,3000) );
	array<int> bcodes[3] = {0, 0, 2};
	response_manager.set_target_button_codes( bcodes );
	event1.set_target_button(0);
   event1.set_response_active( true );
	trial1.present(); #trial
	response_manager.set_target_button_codes( bcodes );
	ITI.present(); #inter-trial interval (2-4s)

	if r <= oneback_trials.count() then
		if i == oneback_trials[r] then
			fix.present();
			ITI.set_duration( random(1000,3000) );
			eventr.set_stimulus(soundlist1[int(soundCode1[i][1])]);
			eventr.set_port_code (11);
			array<int> rcodes[3] = {0, 0, 1};
			response_manager.set_target_button_codes( rcodes );
			trialr.present(); #trial
			response_manager.set_target_button_codes( rcodes );
			ITI.present(); #inter-trial interval (2-4s)
			r = r + 1;
		end;
	end;

	soundlist1[int(soundCode1[i][1])].get_wavefile().unload();
   i = i + 1;
end;

#present second half of stimuli
term.print( "\nsecond half" );
loop int j = 1 
until j > soundlist2.count()
begin
	fix.present(); #500ms fixation
   soundlist2[int(soundCode2[j][1])].get_wavefile().load();
   event1.set_stimulus(soundlist2[int(soundCode2[j][1])]);
	event1.set_port_code(int(soundCode2[j][2]));
	event1.set_event_code(soundlist2[int(soundCode2[j][1])].description());
	ITI.set_duration( random(1000,3000) );
	array<int> bcodes[3] = {0, 0, 2};
	response_manager.set_target_button_codes( bcodes );
	event1.set_target_button(0);
   event1.set_response_active( true );
	trial1.present(); #trial
	response_manager.set_target_button_codes( bcodes );
	ITI.present(); #inter-trial interval (2-4s)
	
	if r <= oneback_trials.count() then
		if (j + soundlist1.count()) == oneback_trials[r] then
			fix.present();
			ITI.set_duration( random(1000,3000) );
			eventr.set_stimulus(soundlist2[int(soundCode2[j][1])]);
			eventr.set_port_code (11);
			array<int> rcodes[3] = {0, 0, 1};
			response_manager.set_target_button_codes( rcodes );
			trialr.present(); #trial
			response_manager.set_target_button_codes( rcodes );
			ITI.present();
			r = r + 1;
		end;
	end;
	
   soundlist2[int(soundCode2[j][1])].get_wavefile().unload();
   j = j + 1;
end;
else
#present second half of stimuli
term.print( "\nsecond half" );
int r = 1;
loop int i = 1 
until i > soundlist2.count()
begin
	fix.present(); #500ms fixation
   soundlist2[int(soundCode2[i][1])].get_wavefile().load();
   event1.set_stimulus(soundlist2[int(soundCode2[i][1])]);
	event1.set_port_code(int(soundCode2[i][2]));
	event1.set_event_code(soundlist2[int(soundCode2[i][1])].description());
	ITI.set_duration( random(1000,3000) );
	array<int> bcodes[3] = {0, 0, 2};
	response_manager.set_target_button_codes( bcodes );
	event1.set_target_button(0);
   event1.set_response_active( true );
	trial1.present(); #trial
	response_manager.set_target_button_codes( bcodes );
	ITI.present(); #inter-trial interval (2-4s)

	if r <= oneback_trials.count() then
		if i == oneback_trials[r] then
			fix.present();
			ITI.set_duration( random(1000,3000) );
			eventr.set_stimulus(soundlist2[int(soundCode2[i][1])]);
			eventr.set_port_code (11);
			array<int> rcodes[3] = {0, 0, 1};
			response_manager.set_target_button_codes( rcodes );
			trialr.present(); #trial
			response_manager.set_target_button_codes( rcodes );
			ITI.present(); #inter-trial interval (2-4s)
			r = r + 1;
		end;
	end;

	soundlist2[int(soundCode2[i][1])].get_wavefile().unload();
   i = i + 1;
end;

#present first half of stimuli
term.print("\nfirst half");
loop int j = 1 
until j > soundlist1.count()
begin
	fix.present(); #500ms fixation
   soundlist1[int(soundCode1[j][1])].get_wavefile().load();
   event1.set_stimulus(soundlist1[int(soundCode1[j][1])]);
	event1.set_port_code(int(soundCode1[j][2]));
	event1.set_event_code(soundlist1[int(soundCode1[j][1])].description());
	ITI.set_duration( random(1000,3000) );
	array<int> bcodes[3] = {0, 0, 2};
	response_manager.set_target_button_codes( bcodes );
	event1.set_target_button(0);
   event1.set_response_active( true );
	trial1.present(); #trial
	response_manager.set_target_button_codes( bcodes );
	ITI.present(); #inter-trial interval (2-4s)
	
	if r <= oneback_trials.count() then
		if (j + soundlist2.count()) == oneback_trials[r] then
			fix.present();
			ITI.set_duration( random(1000,3000) );
			eventr.set_stimulus(soundlist1[int(soundCode1[j][1])]);
			eventr.set_port_code (11);
			array<int> rcodes[3] = {0, 0, 1};
			response_manager.set_target_button_codes( rcodes );
			trialr.present(); #trial
			response_manager.set_target_button_codes( rcodes );
			ITI.present();
			r = r + 1;
		end;
	end;
	
   soundlist1[int(soundCode1[j][1])].get_wavefile().unload();
   j = j + 1;
end;
end;
end;