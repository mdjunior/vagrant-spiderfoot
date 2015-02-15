# -------------------------------------------------------------------
# Copyright (c) 2015 GRIS (www.gris.dcc.ufrj.br).  All Rights Reserved.
#
# This file is provided to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file
# except in compliance with the License.  You may obtain
# a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
# -------------------------------------------------------------------
echo "=> Preparing system..."
sudo locale-gen UTF-8

echo "=> Updating repos..."
sudo apt-get -y update

echo "=> Install all of the necessary Python modules..."
sudo apt-get -y install python-dev python-pip git

sudo apt-get -y install libxml2-dev libxslt1-dev zlib1g-dev
sudo pip install lxml

sudo pip install netaddr

sudo apt-get -y install swig libssl-dev
sudo pip install M2Crypto

sudo pip install cherrypy

sudo pip install mako

git clone --branch v2.3.0-final https://github.com/smicallef/spiderfoot.git

cd spiderfoot
python ./sf.py 0.0.0.0:5001 &


