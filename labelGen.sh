#!/bin/bash

# modify CULane to yours
#CULane=~/works/SCNN/data/CULane
CULane=~/dl/lane/SCNN/data/CULane
OutputPath=${CULane}/laneseg_label
if [ ! -d $OutputPath ]; then
  mkdir $OutputPath
fi

echo ${CULane}

    #${CULane}/list/train.txt \

#-l /home/cidi/dl/lane/SCNN/data/CULane/list/train.txt \
./seg_label_generate \
    -l /home/cidi/dl/lane/SCNN/data/CULane/list/train.txt \
    -m imgLabel \
    -d /home/cidi/dl/lane/SCNN/data/CULane/ \
    -w 16 \
    -o /home/cidi/dl/lane/SCNN/data/CULane/laneseg_label \
#    -s
# explanation:
# -l: image list file to process
# -m: set mode to "imgLabel" or "trainList"
# -d: dataset path
# -w: the width of lane labels generated
# -o: path to save the generated labels
# -s: visualize annotation, remove this option to generate labels
