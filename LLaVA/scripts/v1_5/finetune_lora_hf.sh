#!/bin/bash
#script for hf llava 1.5 7b lora
deepspeed llava/train/train_mem_hf.py \
    --lora_enable True --lora_r 64 --lora_alpha 128\
    --deepspeed ./scripts/zero2.json \
    --model_name_or_path llava-hf/llava-1.5-7b-hf \
    --data_path ntudlcv/dlcv_2024_final1 \
    --vision_tower openai/clip-vit-large-patch14-336 \
    --mm_projector_type mlp2x_gelu \
    --mm_vision_select_layer -2 \
    --image_aspect_ratio pad \
    --bf16 True \
    --output_dir ./checkpoints/llava-v1.5-7b-lora-exp2 \
    --num_train_epochs 1 \
    --per_device_train_batch_size 8\
    --per_device_eval_batch_size 4 \
    --gradient_accumulation_steps 1 \
    --evaluation_strategy "no" \
    --save_strategy "steps" \
    --save_steps 2000\
    --save_total_limit 1 \
    --learning_rate 3e-4 \
    --weight_decay 0. \
    --warmup_ratio 0.03 \
    --lr_scheduler_type "cosine" \
    --logging_steps 1 \
    --tf32 True \
    --model_max_length 2048 \
    --gradient_checkpointing True \
    --dataloader_num_workers 4 \
    --report_to wandb