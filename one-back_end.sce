scenario = "One-Back"; # This name is recorded in the log file
scenario_type = trials;
response_matching = simple_matching;
no_logfile = true;

active_buttons = 3;
button_codes = 1, 2, 3; # These values will be used to code participant responses 

default_font_size = 56;
default_font = "Arial";
default_background_color = 0,0,0; #Black#
default_text_color = 255,255,255; #White#

begin;

#Thank you screen at end of experiment

trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 20; caption = "Ende des Experiments

Vielen Dank!";
};
x = 0; y = 0; 
};

time = 0;
}thankyou;

begin_pcl;
thankyou.present();

output_file rating = new output_file;