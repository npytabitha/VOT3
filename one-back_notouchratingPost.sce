active_buttons = 3;
button_codes = 1, 2, 3;
response_matching = simple_matching;
no_logfile = true;

begin;

trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 25; caption = "Ende des Blocks

Bitte druecke 'Enter' um fortzufahren";
};
x = 0; y = 0; 
};

time = 0;
}endblock;

#    picture that shows the craving scale with highlighted number
picture {
    text { caption = " -2 "; font_size = 36; } rate1_2;
        x = -320; y = -300; 
	 text { caption = " -1 "; font_size = 36; } rate2_2;
        x = -160; y = -300; 
	 text { caption = " 0 "; font_size = 36; } rate3_2;
        x = 0; y = -300; 
	 text { caption = " 1 "; font_size = 36; } rate4_2;
        x = 160; y = -300; 
	 text { caption = " 2 "; font_size = 36; } rate5_2;
        x = 320; y = -300;     
    text { caption = "^"; font_size = 32; font_color = 255, 255, 255; } textScaleLabel2;            
        x = 0; y = -380;    
    text { caption = "Bitte benutze die links/rechts Tasten (kleine Pfeilspitzen) um Dich auf der Skala zu bewegen. 
Druecke die 'Enter' Taste um Deine Auswahl zu bestaetigen."; font_size = 24; text_align = align_center; width=50; } textScaleLabelCenter2;
        x = 0; y = -450;
    text { caption = "0"; font_size = 36; font_color = 255, 0, 0; } textRating2;
        x = 0; y = -150;
        text { 
caption = "Wie positiv (+2) oder negativ (-2) fuehlst Du Dich ich im Moment?"; 
font = "Arial";
font_color = 255,255,255; #white
font_size = 32;
} textFixation2; 
x = 0; y = 0;    
    
} picUserRatingScale2;

picture {

    text { caption = " 0 "; font_size = 36; } rate1_3;
        x = -325; y = -300; 
	 text { caption = " 1 "; font_size = 36; } rate2_3;
        x = -195; y = -300; 
	 text { caption = " 2 "; font_size = 36; } rate3_3;
        x = -65; y = -300; 
	 text { caption = " 3 "; font_size = 36; } rate4_3;
        x = 65; y = -300; 
	 text { caption = " 4 "; font_size = 36; } rate5_3;
        x = 195; y = -300; 
  	 text { caption = " 5 "; font_size = 36; } rate6_3;
        x = 325; y = -300;   
    text { caption = "^"; font_size = 32; font_color = 255, 255, 255; } textScaleLabel3;            
        x = -325; y = -380;    
    text { caption = "Bitte benutze die links/rechts Tasten (kleine Pfeilspitzen) um Dich auf der Skala zu bewegen. 
Druecke die 'Enter' Taste um Deine Auswahl zu bestaetigen."; font_size = 24; text_align = align_center; width=50; } textScaleLabelCenter3;
        x = 0; y = -450;
    text { caption = "0"; font_size = 36; font_color = 255, 0, 0; } textRating3;
        x = 0; y = -150;
        text { 
caption = "Wie entspannt (0) oder erregt (5) fuehlst Du Dich im Moment?"; 
font = "Arial";
font_color = 255,255,255; #white
font_size = 32;
} textFixation3; 
x = 0; y = 0;    
    
} picUserRatingScale3;


begin_pcl;

# Constant Values #
int INC_BUTTON = 2;
int DEC_BUTTON = 1;
int RATING_BUTTON = 3;
array<int> x_coords[5] = { -320, -160, 0, 160, 320 };
array<int> x_coords3[6] = { -325, -195, -65, 65, 195, 325 };

# --- sub get_rating

sub
    int get_rating2( int starting_val )
begin
	
    # Set the starting position of the rating
    int curr_pos = starting_val;
	 bool exit = false;

   # Now run the loop until we run out of time
   loop 
   until
		exit == true
   begin
      # Set the x coordinate of the rating and update the caption
      int captionNum = curr_pos - 3;
		picUserRatingScale2.set_part_x(6, x_coords[curr_pos]);
      textRating2.set_caption( string(captionNum), true );

        # Present the picture
        picUserRatingScale2.present();
        
			system_keyboard.set_max_length(1);
			string input = system_keyboard.get_input();
		
			if(input == "1") then
				curr_pos = curr_pos - 1;
				if(curr_pos < 1) then
					curr_pos = 1;
				end
			elseif(input == "2") then
				curr_pos = curr_pos + 1;
				if(curr_pos > 5) then
					curr_pos = 5;
				end;
			elseif(input == "") then
				exit = true;
			end;
				
    end;
    return curr_pos - 3;
end;

int rating2 = get_rating2(3);

sub
    int get_rating3( int starting_val )
begin
	
    # Set the starting position of the rating
    int curr_pos = starting_val;
	 bool exit = false;

   # Now run the loop until we run out of time
   loop 
   until
		exit == true
   begin
        # Set the x coordinate of the rating and update the caption
			int captionNum = curr_pos - 1;
			picUserRatingScale3.set_part_x(7, x_coords3[curr_pos]);
			textRating3.set_caption( string(captionNum), true );
     
        # Present the picture
        picUserRatingScale3.present();
        
		  system_keyboard.set_max_length(1);
		  string input = system_keyboard.get_input();
		
		  if(input == "1") then
				curr_pos = curr_pos - 1;
				if(curr_pos < 1) then
					curr_pos = 1;
				end
			elseif(input == "2") then
				curr_pos = curr_pos + 1;
				if(curr_pos > 6) then
					curr_pos = 6;
				end;
			elseif(input == "") then
				exit = true;
			end;
				
    end;
    return curr_pos - 1;
end;

int rating3 = get_rating3(1);

output_file rating = new output_file;
string filename = logfile.subject() + "-rating.txt";
rating.open_append( filename );
rating.print( "\nNo_touch_ratingPost: " );
rating.print( "\nRating 2: " );
rating.print( rating2 );
rating.print( "\nRating 3: " );
rating.print( rating3 );
rating.close();

endblock.present();

