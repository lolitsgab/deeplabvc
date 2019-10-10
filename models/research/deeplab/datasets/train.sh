# Set up the working environment.
CURRENT_DIR="c:\shared\projects\models\research"
WORK_DIR="c:\shared\projects\models\research\deeplab"
DATASET_DIR="datasets"

# Set up the working directories.
PQR_FOLDER="PQR"
INIT_FOLDER="c:\shared\projects\models\research\deeplab\datasets\PQR\exp\train_on_trainval_set\init_models"
TRAIN_LOGDIR="c:\shared\projects\models\research\deeplab\datasets\PQR\exp\train_on_trainval_set\train"
DATASET="c:\shared\projects\models\research\deeplab\datasets\PQR\tfrecord"

mkdir -p "c:\shared\projects\models\research\deeplab\datasets\PQR\exp"
mkdir -p "${TRAIN_LOGDIR}"

NUM_ITERATIONS=10
python "${WORK_DIR}"/train.py \
  --logtostderr \
  --dataset="pascal_voc_seg" \
  --train_split="train" \
  --model_variant="xception_65" \
  --atrous_rates=6 \
  --atrous_rates=12 \
  --atrous_rates=18 \
  --output_stride=16 \
  --decoder_output_stride=4 \
  --train_crop_size=651 \
  --train_crop_size=500 \
  --train_batch_size=1 \
  --training_number_of_steps="1" \
  --fine_tune_batch_norm=true \
  --tf_initial_checkpoint="C:\shared\projects\models\research\deeplab\datasets\ckpts\model.ckpt" \
  --train_logdir="c:\shared\projects\models\research\deeplab\datasets\PQR\exp\train_on_trainval_set\train" \
  --dataset_dir="c:\shared\projects\models\research\deeplab\datasets\PQR\tfrecord"
  #500 x 651