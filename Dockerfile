FROM gimil/rvm:201802100830
LABEL maintainer="Zhimin (Gimi) Liang (https://github.com/Gimi)"

SHELL ["/bin/bash", "-l", "-c"]
RUN rvm install 2.4
