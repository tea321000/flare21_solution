# flare_21

The solution for this challenge is based on the nnUNet repository. Give thanks to Fabian’s great work!

## Installation

1. Clone the directory and its submodule (nnUNet):

    ```
    git clone --recursive <https://github.com/tea321000/flare21_solution>
    cd flare21_solution
    # if you are updating an existing checkout
    git submodule sync
    git submodule update --init --recursive --jobs 0
    ```

2. Follow the installation instructions of [my forked repository](https://github.com/tea321000/nnUNet/tree/flare_21#installation) to install the modified version of nnUNet. Ensure that the relevant environment variables have been set similar to the following commands:

    ```
    cd nnUNet
    pip install -e .
    # you can write environment variables into .bashrc
    export nnUNet_raw_data_base="/media/fabian/nnUNet_raw"
    export nnUNet_preprocessed="/media/fabian/nnUNet_preprocessed"
    export RESULTS_FOLDER="/media/fabian/nnUNet_trained_models"
    # check if the environment variable has been set
    echo $nnUNet_raw_data_base
    echo $nnUNet_preprocessed
    echo $RESULTS_FOLDER
    ```

## Training

At present, the 2d network has not been completely modified yet, so my solution can only be used to train the 3d network. If you have any ideas or questions, you can post them in the issue or send an email to me. The training instructions of the 3d network is the same as the original [nnUNet](https://github.com/tea321000/nnUNet/tree/flare_21#3d-full-resolution-u-net), but the Trainer needs to be changed to `nnUNetTrainerV2_flare`:

```
#My solution in challenge uses lowres network, but fullres network can also be used
nnUNet_train 3d_lowres nnUNetTrainerV2_flare TaskXXX_MYTASK FOLD --npz
```

## Inference

1. Download the trained model from the [download.sh](https://github.com/tea321000/flare21_solution/blob/main/download.sh) script or the [Google Drive](https://drive.google.com/file/d/1YW8MsLaYUr6lhfpf_LL6kTelPiuJRhq9/view) link(task id is 500):

    ```
    bash download.sh
    ```

    If you download from Google Drive link, you need to put the compressed file into the manually created `trained_weight` folder in `flare21_solution` folder and run [download.sh](http://download.sh/).

2. Create `inputs` folder under `flare21_solution` , put the samples to be predicted into the folder, and run [predict.sh](http://predict.sh/):

    ```
    bash predict.sh
    ```

The predictions are saved in the `outputs` folder by default, and the input and output paths can be changed by modifying the script.
