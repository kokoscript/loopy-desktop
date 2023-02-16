function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function fish_title
    if [ $_ = 'fish' ]
        echo (prompt_pwd -d 0)
    else
        echo $argv
    end
end

if status is-interactive
	fish_add_path ~/.scripts
    printf '\n%.0s' (seq 100)
    alias clear="clear && printf '\n%.0s' (seq 100)"
    alias c="printf '\n%.0s' (seq 100)"
	alias l='ls'
	alias s='sudo'
    ~/.scripts/motd.sh
end

set fish_greeting

set --global tide_character_icon ※
set --global tide_context_always_display true  
set --global tide_left_prompt_items context pwd git newline character
set --global tide_right_prompt_items jobs status cmd_duration free time weather
#set --global tide_time_format %T\ %p\ 

set --global tide_weather_bg_color black
set --global tide_weather_color brwhite
set --global tide_time_bg_color white
set --global tide_time_color black
set --global tide_free_bg_color bryellow
set --global tide_free_color black
set --global tide_status_bg_color black
set --global tide_status_color brgreen
set --global tide_status_bg_color_failure bryellow
set --global tide_status_color_failure red
set --global tide_cmd_duration_bg_color black
set --global tide_cmd_duration_color brwhite

set --global tide_context_bg_color black
set --global tide_context_color_default white
set --global tide_context_color_ssh white
set --global tide_context_color_root red
set --global tide_pwd_bg_color brcyan
set --global tide_pwd_color_anchors black
set --global tide_pwd_color_dirs black
set --global tide_pwd_color_truncated_dirs brblack
set --global tide_character_color brcyan
set --global tide_character_color_failure brred

set --global tide_prompt_color_frame_and_connection white
