# Joint scattering for chick call recognition

Code for the paper: Changhong Wang, Emmanouil Benetos, Shuge Wang, and Elisabetta Versace. [Joint Scattering for Automatic Chick Call Recognition](https://arxiv.org/abs/2110.03965), [IEEE European Signal Processing Conference](https://2022.eusipco.org/) (EUSIPCO), 2022.

# How to run
## Get code
git clone https://github.com/changhongw/jointscat_chickcall.git

## Install dependencies
`conda create -n myenv python=3.1.17`<br>
`conda install --file requirements.txt`

## Get ScatNet
The code is based on [ScatNet](https://www.di.ens.fr/data/software/scatnet/), a MATLAB implementation of the scattering transform, with monior modifications. <br>
git clone https://github.com/changhongw/scatnet.git 

## JTFS feature extraction
python chickcall_JTFS_feature_extract.py

## Run notebooks
- chick call detection: <br>
Detection_onset_segment.ipynb

- chick call recognition:  <br>
Scat_Only.ipynb <br>
Seg_Scat_annotated.ipynb <br>
Seg_Scat_detected.ipynb <br>
MFCC_Only.ipynb <br>
Seg_MFCC_annotated.ipynb <br>
Seg_MFCC_annotated.ipynb <br>

# Citation
@article{wang2021joint,
  title={Joint Scattering for Automatic Chick Call Recognition},
  author={Wang, Changhong and Benetos, Emmanouil and Wang, Shuge and Versace, Elisabetta},
  journal={arXiv preprint arXiv:2110.03965},
  year={2021}
}
