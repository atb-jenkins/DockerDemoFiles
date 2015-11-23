FROM tomcat:7-jre7

MAINTAINER "ATB <info@agiletrailblazers.com>"
RUN useradd -ms /bin/bash dockeruser
# copy the nice dotfiles that dockerfile/ubuntu gives us:
ADD .profile  /home/dockeruser/.profile
ENV PATH /home/dockeruser/.profile:$PATH
#RUN chown -R dockeruser:dockeruser /home/dockeruser
RUN chown -R dockeruser:dockeruser /usr/local/tomcat
RUN chmod -R 777 /usr/local/tomcat
USER dockeruser

ADD settings.xml /usr/local/tomcat/conf/
ADD tomcat-users.xml /usr/local/tomcat/conf/



