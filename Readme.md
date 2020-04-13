# Local Gitlab Server with Vagrant

Provisions an Ubuntu 18 LTE based Vagrant Box and deploys Gitlab for local development.

## Prerequisites

* VirtualBox
* Vagrant

## Get started

* Clone this repo locally
* Run:
  ```bash
  vagrant up
  ```
* Access [http://gitlab.local.test](http://gitlab.local.test) and set the administrator password

## Setup a first runner

* Go to Gitlab > Admin Area > Runners
* Notice the runner registration URL and token, on the upper right side
* SSH into the Vagrant box, initiate the runner registration and follow the official instructions: [Registering runners](https://docs.gitlab.com/runner/register/index.html)
  ```bash
  vagrant ssh

  sudo gitlab-runner register
  ```