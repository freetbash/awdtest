FROM ubuntu:20.04

# 安装 SSH 服务
RUN apt-get update && apt-get install -y openssh-server openssl
RUN mkdir /var/run/sshd

# 添加新用户 'ctf' 并设置密码为 'ctf'
RUN useradd -m -p $(openssl passwd -1 ctf) ctf

# 允许 'ctf' 用户远程登录
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin no/' /etc/ssh/sshd_config
RUN echo 'AllowUsers ctf' >> /etc/ssh/sshd_config

COPY check2 /check2
# 添加启动脚本
COPY start.py /start.py
RUN chmod +x /start.py

COPY start.sh /start.sh
RUN chmod +x /start.sh
# 设置开机启动时运行启动脚本
CMD ["/start.sh"]
