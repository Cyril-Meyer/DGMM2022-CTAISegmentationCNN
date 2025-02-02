# CTAISegmentationCNN
Combining max-tree and CNN for segmentation of cellular FIB-SEM images.

## Reproducible Research

* Platform : Ubuntu 18.04.6 LTS
* Language : Python 3.6.9
  * TensorFlow 2.6.2

### Get code and data
Get this repository :
```
git clone https://github.com/Cyril-Meyer/DGMM2022-RRPR-CTAISegmentationCNN.git CTAISegmentationCNN
cd CTAISegmentationCNN
```
Get the data :
```
git clone https://github.com/Cyril-Meyer/DGMM2022-RRPR-MEYER-DATA.git DGMM2022-MEYER-DATA
```
Get the source code of ComponentTreeAttributeImage :
```
git clone https://github.com/Cyril-Meyer/DGMM2022-RRPR-ComponentTreeAttributeImage.git ComponentTreeAttributeImage
```
Optional : if you preferred to download the data in another folder,
create a symbolic link :
```
ln -s /Data/DGMM2022-MEYER-DATA DGMM2022-MEYER-DATA
```

### Prepare Python venv
```
python -m venv venv
source venv/bin/activate
pip install -U pip setuptools wheel
pip install numpy scipy scikit-image
pip install MedPy
pip install tensorflow==2.6.2
pip install git+https://github.com/Cyril-Meyer/tism.git
```

If you are using the same version of Python, you should have the same
packages installed as in `requirements.txt`. This file is not made to be used to
install the requirements, only to check them (result of `pip freeze`).
If you have problems, check that you have the same libraries installed
as in the `requirements.txt` file.  
*Note: if you cannot get TensorFlow 2, check that you correctly updated pip.*

### Pre process the data
*Note: all the preprocessing scripts use fixed path and no arguments.
If you want to use theses processing on your own images, edit the files to change
the used paths*

1. Low pass filter (9x9 mean filter) on the image slices

```
python 01_mean_filter.py
```

2. Component Tree Attribute as Image

Build ComponentTreeAttributeImage :
```
cd ComponentTreeAttributeImage/scripts
g++ -O3 -I../. CTAISegmentationCNN.cpp -o CTAISegmentationCNN
cd ../..
ln -s ComponentTreeAttributeImage/scripts/CTAISegmentationCNN 02_preprocess_ComponentTreeAttributeImage
```

Extract attribute image from pre processed images (use the script, not the binary build) :
```
./02_attribute_image.sh
```

3. Crop the image to the annotated area and construct tiff stack.

```
python 03_crop_roi.py
```

### Segmentation using Convolutional Neural Network

Short version : to launch a train and evaluation for each of the experimentation once :
```
# X is the identifier for the experimentation run
./run.sh X
```

1. Train the model

The positional parameters are :
1. unique ID for the train, e.g. a single char, `A`
2. input data folder, e.g. `./DGMM2022-MEYER-DATA`
3. output folder, e.g. `./CTAI_SEG_CNN`
4. the dataset to use, `I3`, `I3_MI` or `I3_ER`
5. the experimentation to run, e.g. `BASELINE`

Examples :
```
python train.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE
```
```
python train.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA
```

2. Evaluate the model

The positional parameters are :
1. unique ID of the train
2. input data folder
3. output folder
4. the dataset to use
5. the experimentation to run
6. the model to choose, `BEST` or `LAST`  
   the best model is selected using validation set at the end of each epochs.

Examples :
```
python eval.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE BEST
python eval.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3 BASELINE LAST
```
```
python eval.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA BEST
python eval.py A ./DGMM2022-MEYER-DATA ./CTAI_SEG_CNN I3_MI CONTRAST-MAX_AREA_D_AREAN_H_D-LIMIT_AREA LAST
```

3. Merge & Analyze the results

Use the `analysis.ipynb` jupyter notebook to merge the `.csv` metrics and then
to visualize results.


## Acknowledgements

We acknowledge the High Performance Computing Center of the University of Strasbourg for supporting this work by
providing scientific support and access to computing resources. Part of the computing resources were funded by the
Equipex Equip@Meso project (Programme Investissements d'Avenir) and the CPER Alsacalcul/Big Data.  
We thank D. Spehner from the Institut de Génétique et de Biologie Moléculaire et Cellulaire for providing the images
and V. Mallouh for providing the annotations.  
We acknowledge the use of resources of the French Infrastructure for Integrated Structural Biology FRISBI
ANR-10-INBS-05 and of Instruct-ERIC.  
We acknowledge that this work is supported by an IdEx doctoral contract, Université de Strasbourg.
