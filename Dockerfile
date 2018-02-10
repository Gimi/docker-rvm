FROM buildpack-deps:stretch
LABEL maintainer="Zhimin (Gimi) Liang (https://github.com/Gimi)"

# skip installing gem documentation
RUN mkdir -p /usr/local/etc \
	&& { \
		echo 'install: --no-document'; \
		echo 'update: --no-document'; \
	} >> /usr/local/etc/gemrc

# rvm.sh does not support sh
SHELL ["/bin/bash", "-c"]
RUN set -ex \
 && curl -sSL https://rvm.io/mpapis.asc | gpg --import - \
 && curl -sSL https://get.rvm.io | bash -s head \
 && source /etc/profile.d/rvm.sh \
 && rvm autolibs enable \
 && echo "source /etc/profile.d/rvm.sh" >> /root/.bashrc
