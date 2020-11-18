/// @description Insert description here
// You can write your code in this editor
global.is_select = false;
global.is_move = false;
global.user_selection = 0;
cooldown = 200;

//start variables
start = true;
global.numCompanions = 0;

//error variables
global.errormsg = false;
errorprint = false;

//tutorial variables
global.tutorial = false;
not_displayed1 = true;
response_not_displayed1 = true;
continue1 = false;
not_displayed2 = true;
response_not_displayed2 = true;
global.t_complete = false;

//mainquest1 variables
global.mainquest1 = false;
global.MQ1not_displayed3 = true;
response_not_displayed3 = true;
not_displayed4 = true;
continue2 = false;
continue3 = false;
global.has_keys = false;
global.mq1_complete = false;

//mainquest2 variables
global.mainquest2 = false;
global.MQ2not_displayed2 = true;
not_displayed3 = true;
global.has_eggs = false;
global.mq2_complete = false;

//sidequest1 variables
global.sidequest1 = false;
global.sq1_complete = false;

//sidequest2 variables
global.sidequest2 = false;
global.sq2_complete = false;

//sidequest3 variables
global.sidequest3 = false;
global.sq3_complete = false;

//ending variables
global.ending = false;
global.end_complete = false;

//menu vars
paused = false;
paused_surf = -1;