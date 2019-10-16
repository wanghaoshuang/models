export CUDA_VISIBLE_DEVICES=1
nohup python train.py \
--lr=1e-3 \
--use_gpu=0 \
--total_step=1 \
--batch_size=1 \
--l2decay=4e-4 \
--momentum=0.9 \
--model="crnn_ctc" \
--log_period=10 \
> crnn_ctc.log 2>&1 &

tailf crnn_ctc.log
