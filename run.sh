#! /bin/bash
if [ -n "$1" ]; then
echo $1
else
echo "missing parameter"
exit 1
fi
python --version
pip -V
echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo BASELINE
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI BASELINE --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI BASELINE BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI BASELINE LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo AREA_2048_1048576
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_2048_1048576 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_2048_1048576 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_2048_1048576 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo AREA_4096
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_4096 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_4096 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_4096 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo AREA_DUAL_256_262144
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_DUAL_256_262144 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_DUAL_256_262144 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI AREA_DUAL_256_262144 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo CONTRAST_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo CONTRAST_DUAL_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_DUAL_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_DUAL_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST_DUAL_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo MGB-MAX_MGB-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI MGB-MAX_MGB-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI MGB-MAX_MGB-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI MGB-MAX_MGB-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_MI
echo VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo BASELINE
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER BASELINE --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER BASELINE BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER BASELINE LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo AREA_2048_1048576
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_2048_1048576 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_2048_1048576 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_2048_1048576 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo AREA_4096
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_4096 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_4096 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_4096 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo AREA_DUAL_256_262144
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_DUAL_256_262144 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_DUAL_256_262144 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER AREA_DUAL_256_262144 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo CONTRAST_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo CONTRAST_DUAL_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_DUAL_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_DUAL_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST_DUAL_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo MGB-MAX_MGB-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER MGB-MAX_MGB-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER MGB-MAX_MGB-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER MGB-MAX_MGB-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3_ER
echo VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_ER VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo BASELINE
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo AREA_2048_1048576
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_2048_1048576 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_2048_1048576 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_2048_1048576 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo AREA_4096
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_4096 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_4096 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_4096 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo AREA_DUAL_256_262144
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_DUAL_256_262144 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_DUAL_256_262144 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 AREA_DUAL_256_262144 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPACITY_MAX_50-MAX_AREA_D_AREAN_H_D LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 COMPLEXITY-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo CONTRAST_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo CONTRAST_DUAL_10_150
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_DUAL_10_150 --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_DUAL_10_150 BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST_DUAL_10_150 LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo MGB-MAX_MGB-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 MGB-MAX_MGB-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 MGB-MAX_MGB-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 MGB-MAX_MGB-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64

echo ./DGMM2022-MEYER-DATA
echo ./CTAI_SEG_CNN
echo I3
echo VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
echo DICE
python train.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST --LOSS DICE --MODEL UNET-R64
python eval.py $1 ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 VOLUME-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST --LOSS DICE --MODEL UNET-R64
