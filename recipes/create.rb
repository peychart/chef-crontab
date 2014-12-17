#
# Cookbook Name:: chef-crontab
# Recipe:: create
#
# Copyright (C) 2014 PE, pf.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

node['crontab'].each do |name, description|
  cron name do
    minute  description['minute']
    hour    description['hour']
    day     description['day']
    month   description['month']
    weekday description['weekday']
    user    description['user']
    command description['command']
    path    description['path']
    mailto  description['mailto']
    action :create
  end
end if node['crontab']

