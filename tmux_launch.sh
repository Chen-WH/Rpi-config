#!/bin/sh
# create a new session
tmux new-session -d -s a  
# split window into 4 parts
tmux split-window -h   # 切割窗口
tmux split-window -v
tmux split-window -h  
tmux select-pane -t 0
tmux split-window -v


## others command:
# send command to shell
# sleep 0.5
tmux select-pane -t 0   # 选择0号窗口
tmux send-keys "roslaunch mocap_vicon vicon.launch" C-m # 向选择的窗口发送指令

sleep 8
tmux select-pane -t 1   # 选择0号窗口
tmux send-keys "roslaunch mavros px4.launch" C-m # 向选择的窗口发送指令

sleep 2
##########################################################
tmux select-pane -t 4   # 选择1号窗口
tmux send-keys "cd bag" C-m # 向选择的窗口发送指令

sleep 2
tmux select-pane -t 2   # 选择1号窗口
tmux send-keys "roslaunch pva_tracker go.launch" C-m # 向选择的窗口发送指令

tmux select-pane -t 1

# tmux select-pane -t 3   # 选择1号窗口
# tmux send-keys "rostopic echo /mavros/local_position/pose" C-m # 向选择的窗口发送指令

# sleep 2
# tmux select-pane -t 1   # 选择1号窗口
# tmux send-keys "sleep 2" C-m
# tmux send-keys "cd BashStart" C-m # 向选择的窗口发送指令
# tmux send-keys "./planner.sh" C-m
# # tmux send-keys "sleep 2" C-m

# sleep 2
# tmux select-pane -t 2   # 选择1号窗口
# tmux send-keys "sleep 2" C-m
# tmux send-keys "cd BashStart" C-m # 向选择的窗口发送指令
# tmux send-keys "./control.sh" C-m
# # tmux send-keys "sleep 2" C-m

# sleep 2
# tmux select-pane -t 5   # 选择1号窗口
# tmux send-keys "sleep 2" C-m
# tmux send-keys "cd /home/up/rosbagrecord" C-m # 向选择的窗口发送指令

exit 0
