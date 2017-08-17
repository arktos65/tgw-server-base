FROM ubuntu:trusty

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install openssh-server -y
RUN rm -f /etc/ssh/ssh_host_dsa_key && rm -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key -N ''
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ''
#RUN echo 'OPTIONS="-o UseDNS=no -o UsePAM=no -o PasswordAuthentication=yes"' >> /etc/sysconfig/sshd
RUN mkdir -p /var/run/sshd
RUN service ssh restart
RUN useradd -d /home/kitchen -m -s /bin/bash kitchen
RUN echo <%= "kitchen:kitchen" %> | chpasswd
RUN echo 'kitchen ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
RUN mkdir -p /home/kitchen/.ssh
RUN chown -R kitchen /home/kitchen/.ssh
RUN chmod 0700 /home/kitchen/.ssh
RUN touch /home/kitchen/.ssh/authorized_keys
RUN chown kitchen /home/kitchen/.ssh/authorized_keys
RUN chmod 0600 /home/kitchen/.ssh/authorized_keys
RUN curl -L https://www.chef.io/chef/install.sh | bash
#RUN echo '<%= IO.read(@public_key).strip %>' >> /home/kitchen/.ssh/authorized_keys

EXPOSE 22

CMD sudo service ssh restart
