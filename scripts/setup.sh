#!/bin/bash -vx

sudo az storage blob download --container-name app-binaries --file /tmp/jdk-18_linux-x64_bin.tar.gz --name jdk-18_linux-x64_bin.tar.gz --account-name terraform616 --account-key 3NcvEdeaO0oEnBU3HgDvKGzV+PJKiEnh8ZgqfSDHNTf4Oc2YIWqRGiKaVqzJ10aWwR+RMItqPDLy+AStzUqvsQ==


sudo cp -r /tmp/jdk-18_linux-x64_bin.tar.gz /home/adminazure

sudo chown adminazure:adminazure /home/adminazure/jdk-18_linux-x64_bin.tar.gz

cd /home/adminazure

tar -xvf /home/adminazure/jdk-18_linux-x64_bin.tar.gz
mv /home/adminazure/jdk-18.0.1.1 /home/adminazure/java
sudo chown -R adminazure:adminazure java/  
sudo update-alternatives --install /usr/bin/java java /home/adminazure/java/bin/java 1000
sudo update-alternatives --install /usr/bin/java javac /home/adminazure/java/bin/javac 1000
./java/bin/java --version > version1.txt
./java/bin/javac --version > version2.txt