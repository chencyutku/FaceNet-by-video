Face-Recognition_FaceNet_PyTorch
===========================

ReFix from [Face-Recognition_FaceNet_PyTorch](https://github.com/BeiXi1949/Face-Recognition_FaceNet_PyTorch) on Ubuntu18.04

This integrated pytorch based system is a tutorial system for those who are interseted in Computer Vision especially in face recognition. Face recognition method is using FaceNet.

Some parts of this system are copy from other Github. Sites are in the references below, appreciate their contribution.

FaceNet Models are from [Openface](https://cmusatyalab.github.io/openface/ "悬停显示")

![image](https://github.com/BeiXi1949/Face-Recognition_FaceNet_PyTorch/blob/master/test.jpeg)
****
# Environment  

On my Ubuntu18.04, the version of necessary environments are:

Python package requirements

| Environment | Version  |               Command               |
| :---------: | :------: | :---------------------------------: |
|   Python    |  3.6.9   |   Build in version on Ubuntu18.04   |
|   PyTorch   |  0.3.1   |      pip install torch==0.3.1       |
| Torchvision |  0.2.0   |   pip install torchvision==0.2.0    |
|   Opencv    | 4.4.0.44 | pip install opencv-python==4.4.0.44 |
|    Dlib     |  19.9.0  |      pip install dlib==19.9.0       |

*if you meet problem when* `pip install dlib` *, run* `sudo apt install cmake g++` *first.*

*******************************************************************************************************
# Guide

put the video you would like to register/recognize in `input/someone.mp4`

```
python3 Register.py person_A.mp4        # is for people registion
```

___Warning:___ Please remember to press 'ESC' to log out after a 10s record video has been recorded. 

```
Recognizer.py is for people recogntion
```

___Warning:___ If your device supports CPU only. Please remember to modify model loding in Line 53

| Environment | Method                                                                              |
| ----------- | ----------------------------------------------------------------------------------- |
| CPU         | model.load_state_dict(torch.load('path',map_location=lambda storage, loc: storage)) |
| GPU         | model.load_state_dict(torch.load('path'))                                           |

___Warning:___ Remember do not delete the folder './User/people_ori/Unknown'

*******************************************************************************************************

# References  

| Name                                 | Github                                                                     |
| ------------------------------------ | -------------------------------------------------------------------------- |
| Convert Torch model to PyTorch Model | [OpenFacePytorch](https://github.com/thnkim/OpenFacePytorch "悬停显示")    |
| MTCNN PyTorch                        | [mtcnn-pytorch](https://github.com/TropComplique/mtcnn-pytorch "悬停显示") |

*******************************************************************************************************

專案原創者

| Author | Leo（北习）            |
| ------ | ---------------------- |
| E-mail | zouzijie1994@gmail.com |
