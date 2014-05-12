# encoding: utf-8
# Cookbook Name:: hvm-base
# Attributes:: default
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

default['hvm-base']['ceph']['group']                                = 'ceph'
default['hvm-base']['ceph']['global']['fsid']                       = '86f293d0-bec7-4694-ace7-af3fbaa98736'
default['hvm-base']['ceph']['global']['mon_initial_members']        = %w(red6 kitt shepard)
default['hvm-base']['ceph']['global']['mon_host']                   = ['192.168.0.40', '192.168.0.35', '192.168.0.2']
default['hvm-base']['ceph']['global']['auth_supported']             = 'none'
default['hvm-base']['ceph']['global']['osd_journal_size']           = 1024
default['hvm-base']['ceph']['global']['filestore_xattr_use_omap']   = true
default['hvm-base']['ceph']['global']['rbd_create_default_fomat']   = 2
default['hvm-base']['ceph']['global']['rbd_default_fomat']          = 2
