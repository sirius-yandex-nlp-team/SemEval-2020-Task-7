python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 0 -lr 0.0003 -schedule none -epoch 10 -feature edit-context -train_extra 0 -seed 1 -exp cbow_finetune_0_lr_0.0003_schedule_none_epoch_10_feature_edit-context_extra_0_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 0 -lr 0.0003 -schedule none -epoch 10 -feature edit-original -train_extra 0 -seed 1 -exp cbow_finetune_0_lr_0.0003_schedule_none_epoch_10_feature_edit-original_extra_0_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 0 -lr 0.001 -schedule none -epoch 10 -feature edit-context -train_extra 1 -seed 1 -exp cbow_finetune_0_lr_0.001_schedule_none_epoch_10_feature_edit-context_extra_1_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 0 -lr 0.0003 -schedule none -epoch 10 -feature edit-original -train_extra 1 -seed 1 -exp cbow_finetune_0_lr_0.0003_schedule_none_epoch_10_feature_edit-original_extra_1_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 1 -lr 0.0003 -schedule none -epoch 10 -feature edit-context -train_extra 0 -seed 1 -exp cbow_finetune_1_lr_0.0003_schedule_none_epoch_10_feature_edit-context_extra_0_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 1 -lr 0.001 -schedule none -epoch 10 -feature edit-original -train_extra 0 -seed 1 -exp cbow_finetune_1_lr_0.001_schedule_none_epoch_10_feature_edit-original_extra_0_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 1 -lr 0.0003 -schedule none -epoch 10 -feature edit-context -train_extra 1 -seed 1 -exp cbow_finetune_1_lr_0.0003_schedule_none_epoch_10_feature_edit-context_extra_1_seed_1
python main.py -task task1 -bsz 32 -do_train -do_eval -save_model -track -tensorboard -model cbow -finetune 1 -lr 0.001 -schedule none -epoch 10 -feature edit-original -train_extra 1 -seed 1 -exp cbow_finetune_1_lr_0.001_schedule_none_epoch_10_feature_edit-original_extra_1_seed_1