FROM ubuntu:trusty

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install openssh-server -y
#RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key
#RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN mkdir -p /var/run/sshd
#RUN useradd -d /home/<%= @username %> -m -s /bin/bash <%= @username %>
#RUN echo <%= "#{@username}:#{@password}" %> | chpasswd
#RUN echo '<%= @username %> ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
#RUN mkdir -p /home/<%= @username %>/.ssh
#RUN chown -R <%= @username %> /home/<%= @username %>/.ssh
#RUN chmod 0700 /home/<%= @username %>/.ssh
#RUN touch /home/<%= @username %>/.ssh/authorized_keys
#RUN chown <%= @username %> /home/<%= @username %>/.ssh/authorized_keys
#RUN chmod 0600 /home/<%= @username %>/.ssh/authorized_keys
#RUN curl -L https://www.chef.io/chef/install.sh | bash
#RUN echo '<%= IO.read(@public_key).strip %>' >> /home/<%= @username %>/.ssh/authorized_keys

EXPOSE 22

CMD /usr/sbin/sshd -D
