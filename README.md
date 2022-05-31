# Joint scattering for chick call recognition

Code for the paper: Changhong Wang, Emmanouil Benetos, Shuge Wang, and Elisabetta Versace. [https://arxiv.org/abs/2110.03965](Joint Scattering for Automatic Chick Call Recognition), [https://2022.eusipco.org/](IEEE European Signal Processing Conference) (EUSIPCO), 2022.

# How to run
# Clone package
git clone https://github.com/changhongw/scatnet.git

## Install dependencies
`conda create -n myenv python=3.1.17`
`conda install --file requirements.txt`

## Get ScatNet
git clone https://github.com/changhongw/scatnet.git

## JTFS feature extraction
python chickcall_JTFS_feature_extract.py

## Run the notebooks
### chick call detection: 
Detection_onset_segment.ipynb
### chick call recognition: 
- Scat_Only.ipynb
- Seg_Scat_annotated.ipynb
- Seg_Scat_detected.ipynb
- MFCC_Only.ipynb
- Seg_MFCC_annotated.ipynb
- Seg_MFCC_annotated.ipynb

# Citation
@article{wang2021joint,
  title={Joint Scattering for Automatic Chick Call Recognition},
  author={Wang, Changhong and Benetos, Emmanouil and Wang, Shuge and Versace, Elisabetta},
  journal={arXiv preprint arXiv:2110.03965},
  year={2021}
}
