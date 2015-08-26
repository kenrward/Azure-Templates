#!/bin/bash
yum -y update

# Required for Ansible
yum install -y epel-release python-keyczar ansible