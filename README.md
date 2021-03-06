# Joint scattering for chick call recognition

Code for the paper: Changhong Wang, Emmanouil Benetos, Shuge Wang, and Elisabetta Versace. [Joint Scattering for Automatic Chick Call Recognition](https://changhongw.github.io/publications/EUSIPCO22_chick_call_recognition.pdf), [IEEE European Signal Processing Conference](https://2022.eusipco.org/) (EUSIPCO), 2022.

## How to run
### Get code
`git clone https://github.com/changhongw/jointscat-chickcall.git`

### Install dependencies
`conda create -n myenv python=3.7.13`<br>
`conda install --file requirements.txt`

### Get ScatNet
`git clone https://github.com/changhongw/scatnet.git`<br>

The code is based on [ScatNet](https://www.di.ens.fr/data/software/scatnet/), a MATLAB implementation of the scattering transform, with monior modifications. We can run scatnet in Python using [subprocess](https://docs.python.org/3/library/subprocess.html) module (see JTFS feature extraction below). 

### Data
You can run directly on your own audio data or use the chick call data in the paper. The chick call dataset is available for [downloading](https://zenodo.org/record/6655837). The recordings being used are listed in `file_names.txt`.

### JTFS feature extraction
`python JTFS_feature_extract.py`

### Run notebooks
- chick call detection: <br>
`Detection_onset_segment.ipynb`

- chick call recognition:  <br>
`Scat_Only.ipynb` <br>
`Seg_Scat_annotated.ipynb` <br>
`Seg_Scat_detected.ipynb` <br>
`MFCC_Only.ipynb` <br>
`Seg_MFCC_annotated.ipynb` <br>
`Seg_MFCC_annotated.ipynb` <br>

## Citation
```
@inproceedings{wang2022chickcall,
  title={Joint Scattering for Automatic Chick Call Recognition},
  author={Wang, Changhong and Benetos, Emmanouil and Wang, Shuge and Versace, Elisabetta},
  booktitle={IEEE European Signal Processing Conference (EUSIPCO)},
  year={2022}
}
```
