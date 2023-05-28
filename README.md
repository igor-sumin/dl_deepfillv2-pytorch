# dl_deepfillv2-pytorch

## Download from DockerHub

1. pull the image from [my repository](https://hub.docker.com/u/swatigor17).
```docker pull swatigor17/deepfillv2_pytorch```

2. run the container:
```docker run swatigor17/deepfillv2_pytorch```

## Build locally Docker image 

1. clone [github repository](https://github.com/igor-sumin/dl_deepfillv2-pytorch):
```git clone https://github.com/igor-sumin/dl_deepfillv2-pytorch.git && cd dl_deepfillv2-pytorch```

2. build the image:
```docker build -t deepfillv2_pytorch .```

3. run the container:
```docker run deepfillv2_pytorch```

## How to get the received image

1. get docker container name:
```docker cp -a```

2. copy image from container to root:
```docker cp <name>:<path to image> .```

3. for example:
```docker cp focused_greider:dl_deepfillv2-pytorch/examples/result/case1_result.png .```