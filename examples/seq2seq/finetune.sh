# Add parent directory to python path to access lightning_base.py
export PYTHONPATH="../":"${PYTHONPATH}"

cd seq2seq

# the proper usage is documented in the README, you need to specify data_dir, output_dir and model_name_or_path
#python seq2seq/finetune.py \
#moved to hyperparams
#--gpus 1 \
#--n_val 1000 \
#--val_check_interval 0.1 \
#--learning_rate=3e-5 \



python finetune.py \
    --fp16 \
    --do_train \
    --do_predict \
    --sortish_sampler \
    --freeze_embeds \
    --freeze_encoder \
    $@

#ls /opt/ml/ -lR