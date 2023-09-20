### CNN-for-weeds
### Weed Detection using Convolutional Neural Network and Transfer  Learning implemented in GColaboratory + Keras + Tensorflow 

This repository contains the code of a Convolutional Neural Network using the VGG16 network as a basis, as well as the databases with which it was trained. 

The code in this repository was tested with Tensorflow version 2.0 and it is possible that some of the library functions have been modified in later versions. 
Tip: Download Anaconda as it will take care of most of the other packages and easier to set up a virtual workspace to work with multiple versions of key packages like python.  Or update the versions of the libraries to use in Colaboratory. 

### Dataset

10,375 RGB images of size 256 x 256 were stored in jpg format to form the "MDCP" dataset of which 6058 images were used for training and 4317 for model testing.

![patchSize_256_olap_50_resFactor_1_yInit_1537_yEnd_1792_xInit_3329_xEnd_3584](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/91ea8ce3-bccf-4806-a5ac-01eafd581c71)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_2817_xEnd_3072](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/bcd03c41-50da-4d35-aca7-e6984b3425e0)
![patchSize_256_olap_50_resFactor_1_yInit_2049_yEnd_2304_xInit_3073_xEnd_3328](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/4f41c1c9-474f-47a3-9921-4c37826b20d7)
![patchSize_256_olap_50_resFactor_1_yInit_2049_yEnd_2304_xInit_1281_xEnd_1536](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/d82c81ff-072b-45cb-b5c0-de2e618d0f03)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_1537_xEnd_1792](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/3f988724-55b2-4724-90d6-39c458a2829f)
![patchSize_256_olap_50_resFactor_1_yInit_2049_yEnd_2304_xInit_1409_xEnd_1664](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/d7cbb113-bd70-492a-b39d-31dd5e13015b)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_1281_xEnd_1536](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/bc987866-f55b-4fba-abd8-20c1a7cd42ad)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_1409_xEnd_1664](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/cd8d065b-215e-44c7-adf6-2246953ca1c0)
![patchSize_256_olap_50_resFactor_1_yInit_2049_yEnd_2304_xInit_1537_xEnd_1792](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/f04a3e3f-4ea5-47ce-8965-034a49424c63)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_2817_xEnd_3072](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/863f59b6-940b-4961-a64f-fef21ee1a938)
![patchSize_256_olap_0_resFactor_1_yInit_3585_yEnd_3840_xInit_4865_xEnd_5120](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/73ccd145-708a-4516-81ff-e01707924b98)
![patchSize_256_olap_50_resFactor_1_yInit_2433_yEnd_2688_xInit_1665_xEnd_1920](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/3b4f2ebe-0f45-4e7c-9236-af81363d8918)
![patchSize_256_olap_50_resFactor_1_yInit_1665_yEnd_1920_xInit_4353_xEnd_4608](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/3f90d6dd-5b80-47ac-aa58-1d19173478a4)

### Heatmap
The predicted values extracted from the trained and tested model are presented in a heat map, so that the probability values of each image (block) are used to reconstruct the complete image. 
