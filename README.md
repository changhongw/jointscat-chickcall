# Joint scattering for chick call recognition

Code for the paper: Changhong Wang, Emmanouil Benetos, Shuge Wang, and Elisabetta Versace. [Joint Scattering for Automatic Chick Call Recognition](https://arxiv.org/abs/2110.03965), [IEEE European Signal Processing Conference](https://2022.eusipco.org/) (EUSIPCO), 2022.

# How to run
## Get code
`git clone https://github.com/changhongw/jointscat_chickcall.git`

## Install dependencies
`conda create -n myenv python=3.1.17`<br>
`conda install --file requirements.txt`

## Get ScatNet
The code is based on [ScatNet](https://www.di.ens.fr/data/software/scatnet/), a MATLAB implementation of the scattering transform, with monior modifications: <br>
`git clone https://github.com/changhongw/scatnet.git`

## Data
You can run directly on your own audio data or use the chick call data in the paper. The chick call dataset is available by contacting [Elisabetta Versace](https://www.preparedmindslab.org/people/elisabetta-versace) because they are currently under embargo for another publication. The recordings we used are listed in `file_names.txt`.  

## JTFS feature extraction
`python chickcall_JTFS_feature_extract.py`

## Run notebooks
- chick call detection: <br>
`Detection_onset_segment`

- chick call recognition:  <br>
`Scat_Only` <br>
`Seg_Scat_annotated` <br>
`Seg_Scat_detected` <br>
`MFCC_Only` <br>
`Seg_MFCC_annotated` <br>
`Seg_MFCC_annotated` <br>

# Citation
```
@inproceedings{wang2022chickcall,
  title={Joint Scattering for Automatic Chick Call Recognition},
  author={Wang, Changhong and Benetos, Emmanouil and Wang, Shuge and Versace, Elisabetta},
  booktitle={IEEE European Signal Processing Conference (EUSIPCO)},
  year={2022}
}
```
