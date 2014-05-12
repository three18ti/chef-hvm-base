# encoding: utf-8
# Cookbook Name:: hvm-base
# Attributes:: users
#
# Copyright 2014, three18ti
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

default['hvm-base']['hvm-user']['name']             = 'oneadmin'
default['hvm-base']['hvm-user']['group']            = 'cloud'
default['hvm-base']['hvm-user']['uid']              = 119
default['hvm-base']['hvm-user']['gid']              = 128
default['hvm-base']['hvm-user']['shell']            = '/bin/bash'
default['hvm-base']['hvm-user']['home']             = '/var/lib/one'
default['hvm-base']['hvm-user']['default-groups']   = %w(cloud kvm libvirtd ceph)
