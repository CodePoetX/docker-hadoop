# docker-hadoop
a docker image containing the hadoop environment
  要构建hadoop的可用docker镜像 我们分解为两步构建 我们知道hadoop运行需要依赖于java jdk，所以第一步我们会构建一个包含jdk1.8的基于centos6的基础镜像，第二部基于第一步的镜像，构建包含hadoop-3.0.3的镜像。
