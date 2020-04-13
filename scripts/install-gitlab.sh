#!/bin/sh

echo ==== Installing Requirements ==============================================
apt-get install -y \
  curl \
  openssh-server \
  ca-certificates \
  htop

echo ==== Installing GitLab CE =================================================
curl -sS https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | sudo bash
apt-get install -y gitlab-ce
gitlab-ctl reconfigure
gitlab-ctl status

echo ==== Installing GitLab Multi Runner =======================================
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
apt-get install gitlab-runner