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

#Instructions at the beginning of experiment
trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 20; caption = "Herzlich Wilkommen!

In diesem Experiment untersuchen wir die Gehirnprozesse der Klangverarbeitung.
Dafuer bitten wir Dich, auf den Bildschirm zu achten und die Klaenge zu verfolgen,
die Dir ueber Kopfhoerer praesentiert werden.

Manchmal wiederholt sich ein und der selbe Klang. In einer Reihe mit Klaengen benannt als
Klang1, Klang2, Klang3, Klang3, Klang4 hat sich zum Beispiel Klang3 wiederholt.
Immer wenn das passiert, druecke bitte die 'Enter' Taste.
Klangwiederholungen tretten unmittelbar aufeinanderfolgend auf (z.B. Klang3, Klang3).
Klangwiederholungen werden NICHT durch andere Klaenge unterbrochen (z.B. Klang3, Klang4, Klang3).

Jedesmal wenn ein Klang ertoent, siehst Du ein Fixationskreuz auf dem Bildschirm.
Bitte halte Deine Augen auf dem Kreuz und versuche nicht zu blinzeln.
Du kannst immer dann blinzeln, wenn Du nichts auf dem Bildschirm siehst.

Bitte druecke 'Enter' um fortzufahren.";
};
x = 0; y = 0; 
};

time = 0;
}instructions_pt1;

trial{
trial_duration=forever;
trial_type=specific_response;
terminator_button = 3;

picture{
text{font_size = 20; max_text_width = 1200; caption = "Dieses Experiment beinhaltet 3 Messtage. Deine Aufgabe an diesen Tagen ist immer gleich und auf drei Bloecke verteilt von denen jeder ungefaehr 25 Minuten lang ist. Zwischen den Bloecken kannst Du Pause machen.

Die Versuchsleiterin wird waerend des Experimentes neben Dir sitzen. An einem der Messtage wird sie Dich mit einer weichen Buerste am Arm streicheln. An den beiden anderen Messtagen wird sie Dich entweder nicht streicheln oder auf der Handinnenfleache streicheln.

Die Reihenfolge der Messtage/Streichelbedingungen wird von der Versuchsleiterin festgelegt.
Bitte versuche das Streicheln und die Anwesenheit der Versuchsleiterin zu ignorieren und Dich ganz auf die Klaenge zu konzentrieren.

Falls Du Fragen hast, wende Dich bitte jetzt an die Versuchsleiterin.
Fall alles klar ist, druecke bitte die 'Enter' Taste.";
};
x = 0; y = 0; 
};

time = 0;
}instructions_pt2;

begin_pcl;
instructions_pt1.present();
instructions_pt2.present();