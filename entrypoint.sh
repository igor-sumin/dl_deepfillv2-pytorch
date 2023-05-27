#!/bin/sh

python test.py --image      examples/inpaint/case1.png            \
               --mask       examples/inpaint/case1_mask.png       \
               --out        examples/result/case1_out.png         \
               --checkpoint pretrained/states_pt_places2.pth