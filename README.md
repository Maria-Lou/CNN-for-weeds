### CNN-for-weeds
### Weed Detection using Convolutional Neural Network and Transfer  Learning implemented in GColaboratory + Keras + Tensorflow 

This repository contains the code of a Convolutional Neural Network using the VGG16 network as a basis, as well as the databases with which it was trained. 

The code in this repository was tested with Tensorflow version 2.0 and it is possible that some of the library functions have been modified in later versions. 
Tip: Download Anaconda as it will take care of most of the other packages and easier to set up a virtual workspace to work with multiple versions of key packages like python.  Or update the versions of the libraries to use in Colaboratory. 

### Dataset

10,375 RGB images of size 256 x 256 were stored in jpg format to form the "MDCP" dataset of which 6058 images were used for training and 4317 for model testing.
![Vuelo12Jun19_patchSize_256_olap_0_resFactor_1_yInit_3841_yEnd_4096_xInit_4865_xEnd_5120](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/a7c978a1-024c-40da-8975-f9788e7f418e)

![patchSize_256_olap_50_resFactor_1_yInit_1537_yEnd_1792_xInit_2945_xEnd_3200](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/b5285200-b6d5-4e51-95b7-98f41f7eb0f4)
![patchSize_256_olap_50_resFactor_1_yInit_2433_yEnd_2688_xInit_1665_xEnd_1920](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/3b4f2ebe-0f45-4e7c-9236-af81363d8918)
![patchSize_256_olap_50_resFactor_1_yInit_1665_yEnd_1920_xInit_4353_xEnd_4608](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/3f90d6dd-5b80-47ac-aa58-1d19173478a4)

### Heatmap
The predicted values extracted from the trained and tested model are presented in a heat map, so that the probability values of each image (block) are used to reconstruct the complete image. 
