# encoding: utf-8
# Cookbook Name:: hvm-base
# Recipe:: default
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

template '/etc/ceph/ceph.conf' do
  source 'etc/ceph/ceph.conf.erb'
  mode 644
  owner 'root'
  group node['hvm-base']['hvm-user']['group']
  variables(
    fsid: node['hvm-base']['ceph']['global']['fsid'],
    mon_initial_members: node['hvm-base']['ceph']['global']['mon_initial_members'],
    mon_host: node['hvm-base']['ceph']['global']['mon_host'],
    auth_supported: node['hvm-base']['ceph']['global']['auth_supported'],
    osd_journal_size: node['hvm-base']['ceph']['global']['osd_journal_size'],
    filestore_xattr_use_omap: node['hvm-base']['ceph']['global']['filestore_xattr_use_omap'],
    rbd_create_default_fomat: node['hvm-base']['ceph']['global']['rbd_create_default_fomat'],
    rbd_default_fomat: node['hvm-base']['ceph']['global']['rbd_default_fomat']
  )
end

['etc/libvirt/qemu.conf', 'etc/apparmor.d/abstractions/libvirt-qemu', 'etc/apparmor.d/usr.sbin.libvirtd'].each do |config|
  template "/#{config}" do
    source "#{config}.erb"
    mode 644
    owner 'root'
    group 'root'
  end
end
