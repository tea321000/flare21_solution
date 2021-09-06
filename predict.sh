export nnUNet_raw_data_base="./nnUNet_raw"
export nnUNet_preprocessed="./nnUNet_preprocessed"
export RESULTS_FOLDER="./nnUNet_trained_models"
nnUNet_predict -i ./inputs -o ./predictions/ -tr nnUNetTrainerV2_flare -t 500 -m 3d_lowres -f 3
