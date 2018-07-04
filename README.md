
# Linux Container virtualization

Tiny container based virtualization tool based on linux chroot environments written in ruby. This tool is creating chroot environments with a bootstrap process and is able to execute programms in this envirement. Dedicated resources are not implemented yet.

## Setup ##

Use the foollwing command to set up the programm.

```
./setup.sh
```

## Images ##

This section describes how to create, list an remove images.

### List Images ###
```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb image list

	Images:

	0	myapp-server
	1	ubuntu

user@johannes:~/IdeaProjects/linux-container-vm$ 
```

### Create Image ###
```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb image create ubuntu files/ubuntu.json 
I: Retrieving InRelease 
I: Retrieving Release 
I: Retrieving Release.gpg 
I: Checking Release signature
I: Valid Release signature (key id 790BC7277767219C42C86F933B4FE6ACC0B21F32)
I: Retrieving Packages 
I: Validating Packages 
I: Resolving dependencies of required packages...
I: Resolving dependencies of base packages...
I: Found additional base dependencies: gcc-4.8-base gnupg gpgv libapt-pkg4.12 libreadline6 libstdc++6 libusb-0.1-4 readline-common ubuntu-keyring 
I: Checking component main on http://archive.ubuntu.com/ubuntu...
I: Retrieving adduser 3.113+nmu3ubuntu3
I: Validating adduser 3.113+nmu3ubuntu3
I: Retrieving apt 1.0.1ubuntu2
I: Validating apt 1.0.1ubuntu2
I: Retrieving base-files 7.2ubuntu5
I: Validating base-files 7.2ubuntu5
I: Retrieving base-passwd 3.5.33
I: Validating base-passwd 3.5.33
I: Retrieving bash 4.3-6ubuntu1
I: Validating bash 4.3-6ubuntu1
I: Retrieving bsdutils 1:2.20.1-5.1ubuntu20
I: Validating bsdutils 1:2.20.1-5.1ubuntu20
I: Retrieving busybox-initramfs 1:1.21.0-1ubuntu1
I: Validating busybox-initramfs 1:1.21.0-1ubuntu1
I: Retrieving coreutils 8.21-1ubuntu5
I: Validating coreutils 8.21-1ubuntu5
I: Retrieving cpio 2.11+dfsg-1ubuntu1
I: Validating cpio 2.11+dfsg-1ubuntu1
I: Retrieving dash 0.5.7-4ubuntu1
I: Validating dash 0.5.7-4ubuntu1
I: Retrieving debconf 1.5.51ubuntu2
I: Validating debconf 1.5.51ubuntu2
I: Retrieving debianutils 4.4
I: Validating debianutils 4.4
I: Retrieving diffutils 1:3.3-1
I: Validating diffutils 1:3.3-1
I: Retrieving dpkg 1.17.5ubuntu5
I: Validating dpkg 1.17.5ubuntu5
I: Retrieving e2fslibs 1.42.9-3ubuntu1
I: Validating e2fslibs 1.42.9-3ubuntu1
I: Retrieving e2fsprogs 1.42.9-3ubuntu1
I: Validating e2fsprogs 1.42.9-3ubuntu1
I: Retrieving findutils 4.4.2-7
I: Validating findutils 4.4.2-7
I: Retrieving gcc-4.8-base 4.8.2-19ubuntu1
I: Validating gcc-4.8-base 4.8.2-19ubuntu1
I: Retrieving gcc-4.9-base 4.9-20140406-0ubuntu1
I: Validating gcc-4.9-base 4.9-20140406-0ubuntu1
I: Retrieving gnupg 1.4.16-1ubuntu2
I: Validating gnupg 1.4.16-1ubuntu2
I: Retrieving gpgv 1.4.16-1ubuntu2
I: Validating gpgv 1.4.16-1ubuntu2
I: Retrieving grep 2.16-1
I: Validating grep 2.16-1
I: Retrieving gzip 1.6-3ubuntu1
I: Validating gzip 1.6-3ubuntu1
I: Retrieving hostname 3.15ubuntu1
I: Validating hostname 3.15ubuntu1
I: Retrieving ifupdown 0.7.47.2ubuntu4
I: Validating ifupdown 0.7.47.2ubuntu4
I: Retrieving initramfs-tools 0.103ubuntu4
I: Validating initramfs-tools 0.103ubuntu4
I: Retrieving initramfs-tools-bin 0.103ubuntu4
I: Validating initramfs-tools-bin 0.103ubuntu4
I: Retrieving initscripts 2.88dsf-41ubuntu6
I: Validating initscripts 2.88dsf-41ubuntu6
I: Retrieving insserv 1.14.0-5ubuntu2
I: Validating insserv 1.14.0-5ubuntu2
I: Retrieving iproute2 3.12.0-2
I: Validating iproute2 3.12.0-2
I: Retrieving klibc-utils 2.0.3-0ubuntu1
I: Validating klibc-utils 2.0.3-0ubuntu1
I: Retrieving kmod 15-0ubuntu6
I: Validating kmod 15-0ubuntu6
I: Retrieving libacl1 2.2.52-1
I: Validating libacl1 2.2.52-1
I: Retrieving libapt-pkg4.12 1.0.1ubuntu2
I: Validating libapt-pkg4.12 1.0.1ubuntu2
I: Retrieving libattr1 1:2.4.47-1ubuntu1
I: Validating libattr1 1:2.4.47-1ubuntu1
I: Retrieving libaudit-common 1:2.3.2-2ubuntu1
I: Validating libaudit-common 1:2.3.2-2ubuntu1
I: Retrieving libaudit1 1:2.3.2-2ubuntu1
I: Validating libaudit1 1:2.3.2-2ubuntu1
I: Retrieving libblkid1 2.20.1-5.1ubuntu20
I: Validating libblkid1 2.20.1-5.1ubuntu20
I: Retrieving libbz2-1.0 1.0.6-5
I: Validating libbz2-1.0 1.0.6-5
I: Retrieving libc-bin 2.19-0ubuntu6
I: Validating libc-bin 2.19-0ubuntu6
I: Retrieving libc6 2.19-0ubuntu6
I: Validating libc6 2.19-0ubuntu6
I: Retrieving libcap2 1:2.24-0ubuntu2
I: Validating libcap2 1:2.24-0ubuntu2
I: Retrieving libcgmanager0 0.24-0ubuntu5
I: Validating libcgmanager0 0.24-0ubuntu5
I: Retrieving libcomerr2 1.42.9-3ubuntu1
I: Validating libcomerr2 1.42.9-3ubuntu1
I: Retrieving libdb5.3 5.3.28-3ubuntu3
I: Validating libdb5.3 5.3.28-3ubuntu3
I: Retrieving libdbus-1-3 1.6.18-0ubuntu4
I: Validating libdbus-1-3 1.6.18-0ubuntu4
I: Retrieving libdebconfclient0 0.187ubuntu1
I: Validating libdebconfclient0 0.187ubuntu1
I: Retrieving libdrm2 2.4.52-1
I: Validating libdrm2 2.4.52-1
I: Retrieving libgcc1 1:4.9-20140406-0ubuntu1
I: Validating libgcc1 1:4.9-20140406-0ubuntu1
I: Retrieving libjson-c2 0.11-3ubuntu1
I: Validating libjson-c2 0.11-3ubuntu1
I: Retrieving libjson0 0.11-3ubuntu1
I: Validating libjson0 0.11-3ubuntu1
I: Retrieving libklibc 2.0.3-0ubuntu1
I: Validating libklibc 2.0.3-0ubuntu1
I: Retrieving libkmod2 15-0ubuntu6
I: Validating libkmod2 15-0ubuntu6
I: Retrieving liblzma5 5.1.1alpha+20120614-2ubuntu2
I: Validating liblzma5 5.1.1alpha+20120614-2ubuntu2
I: Retrieving libmount1 2.20.1-5.1ubuntu20
I: Validating libmount1 2.20.1-5.1ubuntu20
I: Retrieving libncurses5 5.9+20140118-1ubuntu1
I: Validating libncurses5 5.9+20140118-1ubuntu1
I: Retrieving libncursesw5 5.9+20140118-1ubuntu1
I: Validating libncursesw5 5.9+20140118-1ubuntu1
I: Retrieving libnih-dbus1 1.0.3-4ubuntu25
I: Validating libnih-dbus1 1.0.3-4ubuntu25
I: Retrieving libnih1 1.0.3-4ubuntu25
I: Validating libnih1 1.0.3-4ubuntu25
I: Retrieving libpam-modules 1.1.8-1ubuntu2
I: Validating libpam-modules 1.1.8-1ubuntu2
I: Retrieving libpam-modules-bin 1.1.8-1ubuntu2
I: Validating libpam-modules-bin 1.1.8-1ubuntu2
I: Retrieving libpam-runtime 1.1.8-1ubuntu2
I: Validating libpam-runtime 1.1.8-1ubuntu2
I: Retrieving libpam0g 1.1.8-1ubuntu2
I: Validating libpam0g 1.1.8-1ubuntu2
I: Retrieving libpcre3 1:8.31-2ubuntu2
I: Validating libpcre3 1:8.31-2ubuntu2
I: Retrieving libplymouth2 0.8.8-0ubuntu17
I: Validating libplymouth2 0.8.8-0ubuntu17
I: Retrieving libpng12-0 1.2.50-1ubuntu2
I: Validating libpng12-0 1.2.50-1ubuntu2
I: Retrieving libprocps3 1:3.3.9-1ubuntu2
I: Validating libprocps3 1:3.3.9-1ubuntu2
I: Retrieving libreadline6 6.3-4ubuntu2
I: Validating libreadline6 6.3-4ubuntu2
I: Retrieving libselinux1 2.2.2-1
I: Validating libselinux1 2.2.2-1
I: Retrieving libsemanage-common 2.2-1
I: Validating libsemanage-common 2.2-1
I: Retrieving libsemanage1 2.2-1
I: Validating libsemanage1 2.2-1
I: Retrieving libsepol1 2.2-1
I: Validating libsepol1 2.2-1
I: Retrieving libslang2 2.2.4-15ubuntu1
I: Validating libslang2 2.2.4-15ubuntu1
I: Retrieving libss2 1.42.9-3ubuntu1
I: Validating libss2 1.42.9-3ubuntu1
I: Retrieving libstdc++6 4.8.2-19ubuntu1
I: Validating libstdc++6 4.8.2-19ubuntu1
I: Retrieving libtinfo5 5.9+20140118-1ubuntu1
I: Validating libtinfo5 5.9+20140118-1ubuntu1
I: Retrieving libudev1 204-5ubuntu20
I: Validating libudev1 204-5ubuntu20
I: Retrieving libusb-0.1-4 2:0.1.12-23.3ubuntu1
I: Validating libusb-0.1-4 2:0.1.12-23.3ubuntu1
I: Retrieving libustr-1.0-1 1.0.4-3ubuntu2
I: Validating libustr-1.0-1 1.0.4-3ubuntu2
I: Retrieving libuuid1 2.20.1-5.1ubuntu20
I: Validating libuuid1 2.20.1-5.1ubuntu20
I: Retrieving locales 2.13+git20120306-12
I: Validating locales 2.13+git20120306-12
I: Retrieving login 1:4.1.5.1-1ubuntu9
I: Validating login 1:4.1.5.1-1ubuntu9
I: Retrieving lsb-base 4.1+Debian11ubuntu6
I: Validating lsb-base 4.1+Debian11ubuntu6
I: Retrieving makedev 2.3.1-93ubuntu1
I: Validating makedev 2.3.1-93ubuntu1
I: Retrieving mawk 1.3.3-17ubuntu2
I: Validating mawk 1.3.3-17ubuntu2
I: Retrieving module-init-tools 15-0ubuntu6
I: Validating module-init-tools 15-0ubuntu6
I: Retrieving mount 2.20.1-5.1ubuntu20
I: Validating mount 2.20.1-5.1ubuntu20
I: Retrieving mountall 2.53
I: Validating mountall 2.53
I: Retrieving multiarch-support 2.19-0ubuntu6
I: Validating multiarch-support 2.19-0ubuntu6
I: Retrieving ncurses-base 5.9+20140118-1ubuntu1
I: Validating ncurses-base 5.9+20140118-1ubuntu1
I: Retrieving ncurses-bin 5.9+20140118-1ubuntu1
I: Validating ncurses-bin 5.9+20140118-1ubuntu1
I: Retrieving passwd 1:4.1.5.1-1ubuntu9
I: Validating passwd 1:4.1.5.1-1ubuntu9
I: Retrieving perl-base 5.18.2-2ubuntu1
I: Validating perl-base 5.18.2-2ubuntu1
I: Retrieving plymouth 0.8.8-0ubuntu17
I: Validating plymouth 0.8.8-0ubuntu17
I: Retrieving procps 1:3.3.9-1ubuntu2
I: Validating procps 1:3.3.9-1ubuntu2
I: Retrieving readline-common 6.3-4ubuntu2
I: Validating readline-common 6.3-4ubuntu2
I: Retrieving sed 4.2.2-4ubuntu1
I: Validating sed 4.2.2-4ubuntu1
I: Retrieving sensible-utils 0.0.9
I: Validating sensible-utils 0.0.9
I: Retrieving sysv-rc 2.88dsf-41ubuntu6
I: Validating sysv-rc 2.88dsf-41ubuntu6
I: Retrieving sysvinit-utils 2.88dsf-41ubuntu6
I: Validating sysvinit-utils 2.88dsf-41ubuntu6
I: Retrieving tar 1.27.1-1
I: Validating tar 1.27.1-1
I: Retrieving tzdata 2014b-1
I: Validating tzdata 2014b-1
I: Retrieving ubuntu-keyring 2012.05.19
I: Validating ubuntu-keyring 2012.05.19
I: Retrieving udev 204-5ubuntu20
I: Validating udev 204-5ubuntu20
I: Retrieving upstart 1.12.1-0ubuntu4
I: Validating upstart 1.12.1-0ubuntu4
I: Retrieving util-linux 2.20.1-5.1ubuntu20
I: Validating util-linux 2.20.1-5.1ubuntu20
I: Retrieving zlib1g 1:1.2.8.dfsg-1ubuntu1
I: Validating zlib1g 1:1.2.8.dfsg-1ubuntu1
I: Chosen extractor for .deb packages: dpkg-deb
I: Extracting adduser...
I: Extracting base-files...
I: Extracting base-passwd...
I: Extracting bash...
I: Extracting bsdutils...
I: Extracting busybox-initramfs...
I: Extracting coreutils...
I: Extracting cpio...
I: Extracting dash...
I: Extracting debconf...
I: Extracting debianutils...
I: Extracting diffutils...
I: Extracting dpkg...
I: Extracting e2fslibs...
I: Extracting e2fsprogs...
I: Extracting findutils...
I: Extracting gcc-4.9-base...
I: Extracting grep...
I: Extracting gzip...
I: Extracting hostname...
I: Extracting ifupdown...
I: Extracting initramfs-tools...
I: Extracting initramfs-tools-bin...
I: Extracting initscripts...
I: Extracting insserv...
I: Extracting iproute2...
I: Extracting klibc-utils...
I: Extracting kmod...
I: Extracting libacl1...
I: Extracting libattr1...
I: Extracting libaudit-common...
I: Extracting libaudit1...
I: Extracting libblkid1...
I: Extracting libbz2-1.0...
I: Extracting libc-bin...
I: Extracting libc6...
I: Extracting libcap2...
I: Extracting libcgmanager0...
I: Extracting libcomerr2...
I: Extracting libdb5.3...
I: Extracting libdbus-1-3...
I: Extracting libdebconfclient0...
I: Extracting libdrm2...
I: Extracting libgcc1...
I: Extracting libjson-c2...
I: Extracting libjson0...
I: Extracting libklibc...
I: Extracting libkmod2...
I: Extracting liblzma5...
I: Extracting libmount1...
I: Extracting libncurses5...
I: Extracting libncursesw5...
I: Extracting libnih-dbus1...
I: Extracting libnih1...
I: Extracting libpam-modules...
I: Extracting libpam-modules-bin...
I: Extracting libpam-runtime...
I: Extracting libpam0g...
I: Extracting libpcre3...
I: Extracting libplymouth2...
I: Extracting libpng12-0...
I: Extracting libprocps3...
I: Extracting libselinux1...
I: Extracting libsemanage-common...
I: Extracting libsemanage1...
I: Extracting libsepol1...
I: Extracting libslang2...
I: Extracting libss2...
I: Extracting libtinfo5...
I: Extracting libudev1...
I: Extracting libustr-1.0-1...
I: Extracting libuuid1...
I: Extracting locales...
I: Extracting login...
I: Extracting lsb-base...
I: Extracting makedev...
I: Extracting mawk...
I: Extracting module-init-tools...
I: Extracting mount...
I: Extracting mountall...
I: Extracting multiarch-support...
I: Extracting ncurses-base...
I: Extracting ncurses-bin...
I: Extracting passwd...
I: Extracting perl-base...
I: Extracting plymouth...
I: Extracting procps...
I: Extracting sed...
I: Extracting sensible-utils...
I: Extracting sysv-rc...
I: Extracting sysvinit-utils...
I: Extracting tar...
I: Extracting tzdata...
I: Extracting udev...
I: Extracting upstart...
I: Extracting util-linux...
I: Extracting zlib1g...
I: Installing core packages...
I: Unpacking required packages...
I: Unpacking adduser...
I: Unpacking base-files...
I: Unpacking base-passwd...
I: Unpacking bash...
I: Unpacking bsdutils...
I: Unpacking busybox-initramfs...
I: Unpacking coreutils...
I: Unpacking cpio...
I: Unpacking dash...
I: Unpacking debconf...
I: Unpacking debianutils...
I: Unpacking diffutils...
I: Unpacking dpkg...
I: Unpacking e2fslibs:amd64...
I: Unpacking e2fsprogs...
I: Unpacking findutils...
I: Unpacking gcc-4.9-base:amd64...
I: Unpacking grep...
I: Unpacking gzip...
I: Unpacking hostname...
I: Unpacking ifupdown...
I: Unpacking initramfs-tools...
I: Unpacking initramfs-tools-bin...
I: Unpacking initscripts...
I: Unpacking insserv...
I: Unpacking iproute2...
I: Unpacking klibc-utils...
I: Unpacking kmod...
I: Unpacking libacl1:amd64...
I: Unpacking libattr1:amd64...
I: Unpacking libaudit-common...
I: Unpacking libaudit1:amd64...
I: Unpacking libblkid1:amd64...
I: Unpacking libbz2-1.0:amd64...
I: Unpacking libc-bin...
I: Unpacking libc6:amd64...
I: Unpacking libcap2:amd64...
I: Unpacking libcgmanager0:amd64...
I: Unpacking libcomerr2:amd64...
I: Unpacking libdb5.3:amd64...
I: Unpacking libdbus-1-3:amd64...
I: Unpacking libdebconfclient0:amd64...
I: Unpacking libdrm2:amd64...
I: Unpacking libgcc1:amd64...
I: Unpacking libjson-c2:amd64...
I: Unpacking libjson0:amd64...
I: Unpacking libklibc...
I: Unpacking libkmod2:amd64...
I: Unpacking liblzma5:amd64...
I: Unpacking libmount1:amd64...
I: Unpacking libncurses5:amd64...
I: Unpacking libncursesw5:amd64...
I: Unpacking libnih-dbus1:amd64...
I: Unpacking libnih1:amd64...
I: Unpacking libpam-modules:amd64...
I: Unpacking libpam-modules-bin...
I: Unpacking libpam-runtime...
I: Unpacking libpam0g:amd64...
I: Unpacking libpcre3:amd64...
I: Unpacking libplymouth2:amd64...
I: Unpacking libpng12-0:amd64...
I: Unpacking libprocps3:amd64...
I: Unpacking libselinux1:amd64...
I: Unpacking libsemanage-common...
I: Unpacking libsemanage1:amd64...
I: Unpacking libsepol1:amd64...
I: Unpacking libslang2:amd64...
I: Unpacking libss2:amd64...
I: Unpacking libtinfo5:amd64...
I: Unpacking libudev1:amd64...
I: Unpacking libustr-1.0-1:amd64...
I: Unpacking libuuid1:amd64...
I: Unpacking locales...
I: Unpacking login...
I: Unpacking lsb-base...
I: Unpacking makedev...
I: Unpacking mawk...
I: Unpacking module-init-tools...
I: Unpacking mount...
I: Unpacking mountall...
I: Unpacking multiarch-support...
I: Unpacking ncurses-base...
I: Unpacking ncurses-bin...
I: Unpacking passwd...
I: Unpacking perl-base...
I: Unpacking plymouth...
I: Unpacking procps...
I: Unpacking sed...
I: Unpacking sensible-utils...
I: Unpacking sysv-rc...
I: Unpacking sysvinit-utils...
I: Unpacking tar...
I: Unpacking tzdata...
I: Unpacking udev...
I: Unpacking upstart...
I: Unpacking util-linux...
I: Unpacking zlib1g:amd64...
I: Configuring required packages...
I: Configuring lsb-base...
I: Configuring ncurses-base...
I: Configuring sensible-utils...
I: Configuring libklibc...
I: Configuring gcc-4.9-base:amd64...
I: Configuring klibc-utils...
I: Configuring libsemanage-common...
I: Configuring libaudit-common...
I: Configuring libc6:amd64...
I: Configuring cpio...
I: Configuring debianutils...
I: Configuring bsdutils...
I: Configuring diffutils...
I: Configuring locales...
I: Configuring mawk...
I: Configuring hostname...
I: Configuring findutils...
I: Configuring insserv...
I: Configuring busybox-initramfs...
I: Configuring multiarch-support...
I: Configuring libcap2:amd64...
I: Configuring libustr-1.0-1:amd64...
I: Configuring libdbus-1-3:amd64...
I: Configuring libprocps3:amd64...
I: Configuring libjson-c2:amd64...
I: Configuring libdrm2:amd64...
I: Configuring libsepol1:amd64...
I: Configuring libkmod2:amd64...
I: Configuring zlib1g:amd64...
I: Configuring libgcc1:amd64...
I: Configuring libdebconfclient0:amd64...
I: Configuring base-files...
I: Configuring libattr1:amd64...
I: Configuring e2fslibs:amd64...
I: Configuring base-passwd...
I: Configuring libcomerr2:amd64...
I: Configuring libacl1:amd64...
I: Configuring libslang2:amd64...
I: Configuring libss2:amd64...
I: Configuring liblzma5:amd64...
I: Configuring libnih1:amd64...
I: Configuring libaudit1:amd64...
I: Configuring libdb5.3:amd64...
I: Configuring libpcre3:amd64...
I: Configuring libbz2-1.0:amd64...
I: Configuring libtinfo5:amd64...
I: Configuring libc-bin...
I: Configuring libjson0:amd64...
I: Configuring libnih-dbus1:amd64...
I: Configuring libselinux1:amd64...
I: Configuring libpng12-0:amd64...
I: Configuring iproute2...
I: Configuring coreutils...
I: Configuring makedev...
I: Configuring ncurses-bin...
I: Configuring libsemanage1:amd64...
I: Configuring tar...
I: Configuring libcgmanager0:amd64...
I: Configuring libncurses5:amd64...
I: Configuring libplymouth2:amd64...
I: Configuring dpkg...
I: Configuring libncursesw5:amd64...
I: Configuring sysvinit-utils...
I: Configuring dash...
I: Configuring perl-base...
I: Configuring libudev1:amd64...
I: Configuring mountall...
I: Configuring initramfs-tools-bin...
I: Configuring sed...
I: Configuring grep...
I: Configuring gzip...
I: Configuring bash...
I: Configuring debconf...
I: Configuring libpam0g:amd64...
I: Configuring sysv-rc...
I: Configuring tzdata...
I: Configuring kmod...
I: Configuring libpam-modules-bin...
I: Configuring module-init-tools...
I: Configuring libpam-modules:amd64...
I: Configuring passwd...
I: Configuring libpam-runtime...
I: Configuring login...
I: Configuring libuuid1:amd64...
I: Configuring adduser...
I: Configuring libblkid1:amd64...
I: Configuring util-linux...
I: Configuring libmount1:amd64...
I: Configuring mount...
I: Configuring initscripts...
I: Configuring e2fsprogs...
I: Configuring procps...
I: Configuring ifupdown...
I: Configuring upstart...
I: Configuring udev...
I: Configuring initramfs-tools...
I: Configuring plymouth...
I: Configuring libc-bin...
I: Configuring initramfs-tools...
I: Unpacking the base system...
I: Unpacking apt...
I: Unpacking gcc-4.8-base:amd64...
I: Unpacking gnupg...
I: Unpacking gpgv...
I: Unpacking libapt-pkg4.12:amd64...
I: Unpacking libreadline6:amd64...
I: Unpacking libstdc++6:amd64...
I: Unpacking libusb-0.1-4:amd64...
I: Unpacking readline-common...
I: Unpacking ubuntu-keyring...
I: Configuring the base system...
I: Configuring gpgv...
I: Configuring libusb-0.1-4:amd64...
I: Configuring gcc-4.8-base:amd64...
I: Configuring ubuntu-keyring...
I: Configuring libstdc++6:amd64...
I: Configuring readline-common...
I: Configuring libapt-pkg4.12:amd64...
I: Configuring libreadline6:amd64...
I: Configuring gnupg...
I: Configuring apt...
I: Configuring libc-bin...
I: Base system installed successfully.
user@johannes:~/IdeaProjects/linux-container-vm$ 
```
### Remove Image ###
```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb image rm ubuntu 
user@johannes:~/IdeaProjects/linux-container-vm$  
```
## Container ##

This section describes how to list, execute and stop a container.

### List Container ###

```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb  container list
```

### Run Container ###
```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb container run ubuntu /bin/bash
```
### Stop Container ###
```
user@johannes:~/IdeaProjects/linux-container-vm$ sudo ruby cvm.rb container stop ubuntu
```

## Image Files ##
A very simple file to create a new image. This file is located in the in the files/ubuntu.json directory.
```
{
	"from":"ubuntu",
	"arch":"amd64",
	"dist":"trusty"
}
```
Create a complex image that executes commant while building and contains a pre copied file. This file is located in the files/ubuntu_ifconfig.json directory.
```
{
	"from":"ubuntu",
	"arch":"amd64",
	"dist":"trusty",
	"cmd":[
		"apt-get update",
		"apt-get install net-tools -y",
		"ifconfig"
	],
	"add":[
		{"from":"/home/johannes/rub/files/test.txt", "to":"/tmp/abc.txt"}
	]
}
```


