#### This outlines installing Ansible on RH (6/7/8).

***

#### Install Ansible (RH 8)
* EPEL repository currently doesn't have an RPM build.
* Use python package manager to install 
* `sudo dnf install python3`
* `sudo dnf install python3-pip`
* `pip3 install ansible --user`
* `sudo dnf install ansible`
```
Dependencies resolved.
==============================================================================================================================
 Package                             Architecture            Version                         Repository                  Size
==============================================================================================================================
Installing:
 ansible                             noarch                  2.9.15-1.el8                    epel                        17 M
Installing dependencies:
 libsodium                           x86_64                  1.0.18-2.el8                    epel                       162 k
 python3-babel                       noarch                  2.5.1-5.el8                     appstream                  4.8 M
 python3-bcrypt                      x86_64                  3.1.6-2.el8.1                   epel                        44 k
 python3-jinja2                      noarch                  2.10.1-2.el8_0                  appstream                  538 k
 python3-jmespath                    noarch                  0.9.0-11.el8                    appstream                   45 k
 python3-markupsafe                  x86_64                  0.23-19.el8                     appstream                   39 k
 python3-pyasn1                      noarch                  0.3.7-6.el8                     appstream                  126 k
 python3-pynacl                      x86_64                  1.3.0-5.el8                     epel                       100 k
 sshpass                             x86_64                  1.06-9.el8                      epel                        27 k
Installing weak dependencies:
 python3-paramiko                    noarch                  2.4.3-1.el8                     epel                       289 k

Transaction Summary
==============================================================================================================================
Install  11 Packages

```
* `ansible --version`
```
ansible 2.10.4
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/tnaw/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/tnaw/.local/lib/python3.6/site-packages/ansible
  executable location = /home/tnaw/.local/bin/ansible
  python version = 3.6.8 (default, Aug 24 2020, 17:57:11) [GCC 8.3.1 20191121 (Red Hat 8.3.1-5)]
```

***

Install Ansible (RH 6/7)
* This method is intended to download the RPM's needed for installation.
* Install EPEL. `wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm`
* `yum install epel-release`
* `yum install --downloadonly --downloaddir=ansible-work/ ansible`

```
Loaded plugins: fastestmirror
Setting up Install Process
Loading mirror speeds from cached hostfile
epel/metalink                                                                                        | 2.5 kB     00:00
 * epel: d2lzkl7pfhq30w.cloudfront.net
base                                                                                                 | 3.7 kB     00:00
extras                                                                                               | 3.4 kB     00:00
mongodb-org-3.2                                                                                      | 2.5 kB     00:00
pgdg-common                                                                                          | 2.9 kB     00:00
pgdg10                                                                                               | 3.7 kB     00:00
pgdg11                                                                                               | 3.7 kB     00:00
pgdg12                                                                                               | 3.6 kB     00:00
pgdg95                                                                                               | 3.7 kB     00:00
pgdg96                                                                                               | 3.7 kB     00:00
updates                                                                                              | 3.4 kB     00:00
Resolving Dependencies
--> Running transaction check
---> Package ansible.noarch 0:2.6.20-1.el6 will be installed
--> Processing Dependency: PyYAML for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-crypto for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-crypto2.6 for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-httplib2 for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-jinja2-26 for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-keyczar for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-paramiko for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-setuptools for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-simplejson for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: python-six for package: ansible-2.6.20-1.el6.noarch
--> Processing Dependency: sshpass for package: ansible-2.6.20-1.el6.noarch
--> Running transaction check
---> Package PyYAML.x86_64 0:3.10-3.1.el6 will be installed
--> Processing Dependency: libyaml-0.so.2()(64bit) for package: PyYAML-3.10-3.1.el6.x86_64
---> Package python-crypto.x86_64 0:2.0.1-22.el6 will be installed
---> Package python-crypto2.6.x86_64 0:2.6.1-2.el6 will be installed
---> Package python-httplib2.noarch 0:0.18.1-1.el6 will be installed
---> Package python-jinja2-26.noarch 0:2.6-3.el6 will be installed
--> Processing Dependency: python-babel >= 0.8 for package: python-jinja2-26-2.6-3.el6.noarch
--> Processing Dependency: python-markupsafe for package: python-jinja2-26-2.6-3.el6.noarch
---> Package python-keyczar.noarch 0:0.71c-1.el6 will be installed
--> Processing Dependency: python-pyasn1 for package: python-keyczar-0.71c-1.el6.noarch
---> Package python-paramiko.noarch 0:1.7.5-5.el6_10 will be installed
---> Package python-setuptools.noarch 0:0.6.10-4.el6_9 will be installed
---> Package python-simplejson.x86_64 0:2.0.9-3.1.el6 will be installed
---> Package python-six.noarch 0:1.9.0-2.el6 will be installed
---> Package sshpass.x86_64 0:1.06-1.el6 will be installed
--> Running transaction check
---> Package libyaml.x86_64 0:0.1.3-4.el6_6 will be installed
---> Package python-babel.noarch 0:0.9.4-5.1.el6 will be installed
---> Package python-markupsafe.x86_64 0:0.9.2-4.el6 will be installed
---> Package python-pyasn1.noarch 0:0.0.12a-1.el6 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

============================================================================================================================
 Package                            Arch                    Version                          Repository                Size
============================================================================================================================
Installing:
 ansible                            noarch                  2.6.20-1.el6                     epel                      10 M
Installing for dependencies:
 PyYAML                             x86_64                  3.10-3.1.el6                     base                     157 k
 libyaml                            x86_64                  0.1.3-4.el6_6                    base                      52 k
 python-babel                       noarch                  0.9.4-5.1.el6                    base                     1.4 M
 python-crypto                      x86_64                  2.0.1-22.el6                     base                     159 k
 python-crypto2.6                   x86_64                  2.6.1-2.el6                      epel                     513 k
 python-httplib2                    noarch                  0.18.1-1.el6                     epel                     121 k
 python-jinja2-26                   noarch                  2.6-3.el6                        epel                     527 k
 python-keyczar                     noarch                  0.71c-1.el6                      epel                     219 k
 python-markupsafe                  x86_64                  0.9.2-4.el6                      base                      22 k
 python-paramiko                    noarch                  1.7.5-5.el6_10                   updates                  729 k
 python-pyasn1                      noarch                  0.0.12a-1.el6                    base                      70 k
 python-setuptools                  noarch                  0.6.10-4.el6_9                   base                     336 k
 python-simplejson                  x86_64                  2.0.9-3.1.el6                    base                     126 k
 python-six                         noarch                  1.9.0-2.el6                      base                      28 k
 sshpass                            x86_64                  1.06-1.el6                       epel                      20 k

Transaction Summary
============================================================================================================================
Install      16 Package(s)

Total download size: 15 M
Installed size: 75 M
Is this ok [y/N]:

Downloading Packages:
(1/16): PyYAML-3.10-3.1.el6.x86_64.rpm                                                               | 157 kB     00:00
(2/16): ansible-2.6.20-1.el6.noarch.rpm                                                              |  10 MB     00:00
(3/16): libyaml-0.1.3-4.el6_6.x86_64.rpm                                                             |  52 kB     00:00
(4/16): python-babel-0.9.4-5.1.el6.noarch.rpm                                                        | 1.4 MB     00:00
(5/16): python-crypto-2.0.1-22.el6.x86_64.rpm                                                        | 159 kB     00:00
(6/16): python-crypto2.6-2.6.1-2.el6.x86_64.rpm                                                      | 513 kB     00:00
(7/16): python-httplib2-0.18.1-1.el6.noarch.rpm                                                      | 121 kB     00:00
(8/16): python-jinja2-26-2.6-3.el6.noarch.rpm                                                        | 527 kB     00:00
(9/16): python-keyczar-0.71c-1.el6.noarch.rpm                                                        | 219 kB     00:00
(10/16): python-markupsafe-0.9.2-4.el6.x86_64.rpm                                                    |  22 kB     00:00
(11/16): python-paramiko-1.7.5-5.el6_10.noarch.rpm                                                   | 729 kB     00:00
(12/16): python-pyasn1-0.0.12a-1.el6.noarch.rpm                                                      |  70 kB     00:00
(13/16): python-setuptools-0.6.10-4.el6_9.noarch.rpm                                                 | 336 kB     00:00
(14/16): python-simplejson-2.0.9-3.1.el6.x86_64.rpm                                                  | 126 kB     00:00
(15/16): python-six-1.9.0-2.el6.noarch.rpm                                                           |  28 kB     00:00
(16/16): sshpass-1.06-1.el6.x86_64.rpm                                                               |  20 kB     00:00
----------------------------------------------------------------------------------------------------------------------------
Total                                                                                       3.1 MB/s |  15 MB     00:04
exiting because --downloadonly specified
```
* Ensure packages have been download
* `ls -lart`
```
-rw-r--r--.  1 root root 1.5M Jul  3  2011 python-babel-0.9.4-5.1.el6.noarch.rpm
-rw-r--r--.  1 root root 160K Jul  3  2011 python-crypto-2.0.1-22.el6.x86_64.rpm
-rw-r--r--.  1 root root  23K Jul  3  2011 python-markupsafe-0.9.2-4.el6.x86_64.rpm
-rw-r--r--.  1 root root 127K Jul  3  2011 python-simplejson-2.0.9-3.1.el6.x86_64.rpm
-rw-r--r--.  1 root root  71K Sep 26  2011 python-pyasn1-0.0.12a-1.el6.noarch.rpm
-rw-r--r--.  1 root root 219K Dec 27  2012 python-keyczar-0.71c-1.el6.noarch.rpm
-rw-r--r--.  1 root root 527K Jun 14  2014 python-jinja2-26-2.6-3.el6.noarch.rpm
-rw-r--r--.  1 root root 158K Oct 21  2014 PyYAML-3.10-3.1.el6.x86_64.rpm
-rw-r--r--.  1 root root  52K Jan 28  2015 libyaml-0.1.3-4.el6_6.x86_64.rpm
-rw-r--r--.  1 root root 513K Feb 13  2015 python-crypto2.6-2.6.1-2.el6.x86_64.rpm
-rw-r--r--.  1 root root  29K Jul 24  2015 python-six-1.9.0-2.el6.noarch.rpm
-rw-r--r--.  1 root root  20K Feb  2  2017 sshpass-1.06-1.el6.x86_64.rpm
-rw-r--r--.  1 root root 336K Jun 26  2018 python-setuptools-0.6.10-4.el6_9.noarch.rpm
-rw-r--r--.  1 root root 730K Nov  5  2018 python-paramiko-1.7.5-5.el6_10.noarch.rpm
-rw-r--r--.  1 root root  11M Nov  8  2019 ansible-2.6.20-1.el6.noarch.rpm
-rw-r--r--.  1 root root 122K Jun 19  2020 python-httplib2-0.18.1-1.el6.noarch.rpm
total 15M
```

* Install downloaded RPM's
* See minimum requirements `rpm -qpR ansible-2.6.20-1.el6.noarch.rpm`
* `ls *.rpm > rpm-files.txt`
* `yum localinstall 'cat rpm-files.txt'`
* `ansible --version`

```
ansible 2.6.20
  config file = /etc/ansible/ansible.cfg
  configured module search path = [u'/root/.ansible/plugins/modules', u'/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python2.6/site-packages/ansible
  executable location = /usr/bin/ansible
  python version = 2.6.6 (r266:84292, Jun 20 2019, 14:14:55) [GCC 4.4.7 20120313 (Red Hat 4.4.7-23)]
```

* Note: if receiving sha/md5 deprecation errors for basic.py add the following
* `vi /usr/lib/python2.6/site-packages/ansible/module_utils/basic.py`
```
import warnings
warnings.filterwarnings("ignore")
```

***
#### Testing Ansible Automation
* Define host machines by creating/editing `hosts` file in /etc/ansible
* `vi /etc/ansible/hosts` Add something like.  
```
[webservers]
192.168.1.172
[all:vars]
# Set interpreter if needed
ansible_python_interpreter=/usr/bin/python3
```

* Generate test user and ssh-keygen `ssh-keygen` 
* Run Ansible command to copy ssh key `ssh-copy-id foop@192.168.1.172`
* Test `ansible -i /etc/ansible/hosts webservers -m ping`
```
192.168.1.172 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    },
    "changed": false,
    "ping": "pong"
}
```
* Example ad-hoc command `ansible all -a "uname -a"`
```
192.168.1.172 | CHANGED | rc=0 >>
Linux localhost.localdomain 2.6.32-754.el6.x86_64 #1 SMP Tue Jun 19 21:26:04 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
```

* Testing for passing SUDO password
* Create a specific config file
* `vi test.cfg` Add below. 
```
[all]
192.168.1.160

[all:vars]
ansible_python_interpreter=/usr/bin/python3
```
* `ansible -i test.cfg all -a "grep ^root: /etc/shadow"`
```
192.168.1.160 | FAILED | rc=2 >>
grep: /etc/shadow: Permission deniednon-zero return code
```
* Now add arguments -b (to become user, defaults to root) -K (prompt sudo password)
* `ansible -i test.cfg all -a "grep ^root: /etc/shadow" -b -K`
```
192.168.1.160 | SUCCESS | rc=0 >>
root:$6$LyprfHfwL1fb343W$JrazN9HXW7QwG.LWC63eAN0G3taOVjr7ZfVzi2pWOLDUli/0vo6sK0Isir.OMdfX9AyZHuDnHBWmvJ8gwNQk.1::0:99999:7:::
```

#### Configure Sudo passwords in Ansible Vault
* Add the following to /etc/ansible/hosts
```
[all:vars]
# Set interpreter if needed
ansible_python_interpreter=/usr/bin/python3
# Set sudo pass variable (set when configuring ansible-vault shown below)
ansible_sudo_pass='{{ a2t_sudo }}'
[webservers]
192.168.1.160
```

* Add Sudo password to vault.
* `ansible-vault create passwd.yml`.
* Enter the following and save the file
```
a2t_sudo: somepass
```

#### Example playbook
* Create playbook file to test running a command with sudo
* `vi foo.yml`
```
 - hosts: all
   # Become root user
   become: yes
   # List of tasks to be executed
   tasks:
   - yum:
       name=wget
       state=absent
```
* Then run 
* `ansible-playbook foo.yml  --ask-vault --extra-vars '@passwd.yml'`
```
Vault password:
PLAY [all] *****************************************************************************************************************

TASK [Gathering Facts] *****************************************************************************************************
ok: [192.168.1.160]

TASK [yum] *****************************************************************************************************************
changed: [192.168.1.160]

PLAY RECAP *****************************************************************************************************************
192.168.1.160              : ok=2    changed=1    unreachable=0    failed=0
```

#### TODO Create Playbook configurations for specific admin tasks.


***

#### References
* https://www.tecmint.com/install-ansible-on-centos-rhel-8/
* https://www.digitalocean.com/community/cheatsheets/how-to-use-ansible-cheat-sheet-guide
* https://code-maven.com/enable-ansible-passwordless-sudo
* https://www.cyberciti.biz/faq/how-to-set-and-use-sudo-password-for-ansible-vault/
* https://stackoverflow.com/questions/21870083/specify-sudo-password-for-ansible
* https://www.golinuxcloud.com/ansible-playbook-examples/
* https://ahelpme.com/software/ansible/ansible-restart-a-nginx-service-only-if-it-is-running-and-the-configuration-is-ok/
* https://www.cyberithub.com/ansible-vault-command-examples-encrypt-decrypt-sensitive-data-files/

