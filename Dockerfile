FROM concourse/buildroot:git

ADD scripts/install_git_lfs.sh install_git_lfs.sh
ADD assets/ /opt/resource/

RUN set -x && \
    chmod +x /opt/resource/*  && \
    ./install_git_lfs.sh
