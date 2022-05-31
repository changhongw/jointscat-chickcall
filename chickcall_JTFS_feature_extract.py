import time
import subprocess
import warnings
warnings.filterwarnings('ignore')

# extract dJTFS-avg feature in matlab
t0 = time.time()
subprocess.call(["matlab",
                 "-r",
                 "chickcall_JTFS_feature_extract",
                 "-nodisplay",
                 "-nodesktop"])

print('Feature extraction time:%.2f hours.' % ((time.time() - t0)/3600))