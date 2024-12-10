# 使用最新的 mambaforge 基础镜像
FROM docker.io/condaforge/mambaforge-pypy3:latest

# 添加 package 目录到镜像中
ADD package /notebook/

# 设置工作目录
WORKDIR /notebook

# 安装依赖和配置环境
RUN bash install.sh && rm -fv install.sh

# 设置容器启动时的默认命令
# 激活环境并运行Jupyter
ENTRYPOINT ["bash", "run_jupyter"]
