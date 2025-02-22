::# Add parent directory to python path to access lightning_base.py
::export PYTHONPATH="../":"${PYTHONPATH}"

::# the proper usage is documented in the README, you need to specify data_dir, output_dir and model_name_or_path
python finetune.py --learning_rate=3e-5  --gpus 1 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --sortish_sampler  --model_name_or_path sshleifer/distilbart-xsum-12-6 --data_dir abc_v2 --output_dir abc_v2_output
::python finetune.py --learning_rate=3e-5  --gpus 1 --do_train --do_predict --n_val 1000 --val_check_interval 0.1 --sortish_sampler  --model_name_or_path sshleifer/distilbart-xsum-12-6 --data_dir abc_v2 --output_dir abc_v2_output
::    $@
:: --fp16
:: needs apex, don't think that works on windows 