#!/bin/bash
for f in ~/Research/Ameya-Flownet2/DatasetTesting/test/*; do
    if [ -d "$f" ]; then
        # $f is a directory
        #echo "$f"
        flow_file="${f##*/}"
        # python main-flow.py --inference --model FlowNet2SD --save_flow --save $f/ --flow_name $flow_file --inference_dataset ImagesFromFolder --inference_dataset_root $f/ --resume FlowNet2-SD_checkpoint.pth.tar
        python main-flow.py --inference --model FlowNet2 --save_flow --save $f/ --flow_name $flow_file --inference_dataset ImagesFromFolder --inference_dataset_root $f/ --resume pretrained/FlowNet2_checkpoint.pth.tar --number_gpus 1

    fi
done
