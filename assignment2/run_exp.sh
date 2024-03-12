# Step 0. Change this to your campus ID
CAMPUSID='1234567'
mkdir -p $CAMPUSID


# Step 1. Run experiments on CF-IMDB
PREF='cfimdb'
OPTION='pretrain'
python ans_classifier.py \
    --option "${OPTION}" \
    --lr 1e-3 \
    --seed 1234 \
    --train "data/${PREF}-train.txt" \
    --dev "data/${PREF}-dev.txt" \
    --test "data/${PREF}-test.txt" \
    --dev_out "${CAMPUSID}/${PREF}-dev-${OPTION}-output.txt" \
    --test_out "${CAMPUSID}/${PREF}-test-${OPTION}-output.txt" \
    --filepath "${CAMPUSID}/${PREF}-model-${OPTION}.pt" | tee ${CAMPUSID}/${PREF}-train-${OPTION}-log.txt



# Step 2. Prepare submission:
##  Copy your code to the $CAMPUSID folder
##  Compress the $CAMPUSID folder to $CAMPUSID.zip (containing only .py/.txt/.pdf/.sh files)
##  Submit the zip file to Canvas! Congrats!
