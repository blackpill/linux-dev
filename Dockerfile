FROM       ubuntu:16.04

# Install env
RUN locale-gen "en_US.UTF-8"
ADD environment /etc/environment
# ADD sources.list    /etc/apt/sources.list
ADD .bashrc    /root/.bashrc
ADD init_www.sh    /init_www.sh
RUN apt-get update && apt-get install -y  --allow-unauthenticated\
                      vim \
                      subversion                    
CMD /bin/bash                  