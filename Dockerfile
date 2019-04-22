##### ################################################################
#####
#####  Nobit@
#####  ======
#####
#####
#####   Build
#####   -----
#####     docker build -t renshi/nobita --file Dockerfile .
#####
#####   Run
#####   ---
#####     docker run -it renshi/nobita /bin/bash
#####
#####
##### ################################################################
FROM renshi/base
MAINTAINER Renshi <yanqirenshi@gmail.com>


##### ################################################################
#####  Git Clone
##### ################################################################
USER cl-user
WORKDIR /home/cl-user/prj/

RUN git clone https://github.com/yanqirenshi/Rhythm.git
RUN ln -s /home/cl-user/prj/Rhythm/rhythm.asd                  /home/cl-user/.asdf/rhythm.asd

RUN git clone https://github.com/yanqirenshi/Nobita.git
RUN ln -s /home/cl-user/prj/Nobita/graph/nobit@.graph.asd      /home/cl-user/.asdf/nobit@.graph.asd
RUN ln -s /home/cl-user/prj/Nobita/graph/nobit@.graph-test.asd /home/cl-user/.asdf/nobit@.graph-test.asd
RUN ln -s /home/cl-user/prj/Nobita/core/nobit@.asd             /home/cl-user/.asdf/nobit@.asd
RUN ln -s /home/cl-user/prj/Nobita/core/nobit@-test.asd        /home/cl-user/.asdf/nobit@-test.asd
RUN ln -s /home/cl-user/prj/Nobita/api/nobit@.api.asd          /home/cl-user/.asdf/nobit@.api.asd
RUN ln -s /home/cl-user/prj/Nobita/api/nobit@.api-test.asd     /home/cl-user/.asdf/nobit@.api-test.asd


##### ################################################################
#####  Run
##### ################################################################
USER cl-user
WORKDIR /home/cl-user/

CMD ['/home/cl-user/prj/Nobita/nobit@.ros']
