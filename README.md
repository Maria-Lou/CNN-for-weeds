### CNN-for-weeds
### Weed Detection using Convolutional Neural Network and Transfer  Learning implemented in GColaboratory + Keras + Tensorflow 

This repository contains the code of a Convolutional Neural Network using the VGG16 network as a basis, as well as the databases with which it was trained. 

The code in this repository was tested with Tensorflow version 2.0 and it is possible that some of the library functions have been modified in later versions. 
Tip: Download Anaconda as it will take care of most of the other packages and easier to set up a virtual workspace to work with multiple versions of key packages like python.  Or update the versions of the libraries to use in Colaboratory. 

### Dataset

10,375 RGB images of size 256 x 256 were stored in jpg format to form the "MDCP" dataset of which 6058 images were used for training and 4317 for model testing.

![patchSize_256_olap_50_resFactor_1_yInit_1537_yEnd_1792_xInit_3329_xEnd_3584](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/91ea8ce3-bccf-4806-a5ac-01eafd581c71)
![patchSize_256_olap_50_resFactor_1_yInit_2177_yEnd_2432_xInit_1409_xEnd_1664](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/9c89248a-2afb-4afd-9ad9-73c4e54833fb)
![patchSize_256_olap_50_resFactor_1_yInit_2433_yEnd_2688_xInit_2561_xEnd_2816](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/8bf0bc70-c475-4f51-bb8c-91acc7bbd153)




### Heatmap
The predicted values extracted from the trained and tested model are presented in a heat map, so that the probability values of each image (block) are used to reconstruct the complete image. 

![image](https://github.com/Maria-Lou/CNN-for-weeds/assets/52510266/91024be0-0ba9-42fb-866e-acfa8f4b5753)

