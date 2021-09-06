if [ ! -d "trained_weight" ]
then
    mkdir trained_weight
fi
cd trained_weight
pip install gdown
if [ ! -f  "task500.zip" ]
then
gdown https://drive.google.com/uc?id=1YW8MsLaYUr6lhfpf_LL6kTelPiuJRhq9
fi
unzip task500.zip -d $RESULTS_FOLDER
