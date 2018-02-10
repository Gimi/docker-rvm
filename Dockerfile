FROM gimil/rvm:mri-2.4.0
LABEL maintainer="Zhimin (Gimi) Liang (https://github.com/Gimi)"

RUN rvm install 2.5 \
 && rvm alias create default 2.5 \
 && rvm use 2.5 \
 && rvm remove 2.4
