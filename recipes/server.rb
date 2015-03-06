#
# Cookbook Name:: mj-mysql
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# Data Bag: mysql/root からパスワードの取得
data = Chef::EncryptedDataBagItem.load("mysql", "root")
node.set['mysql']['server_root_password'] = data["password"]

mysql_service 'default' do
  port node['mj-mysql']['port']
  version node['mj-mysql']['version']
  initial_root_password node.set['mysql']['server_root_password']
  action [:create, :start]
end