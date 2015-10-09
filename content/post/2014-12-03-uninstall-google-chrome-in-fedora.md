+++
title = "uninstall google chrome in fedora"
tags = ["rpm", "fedora"]
date = "2014-12-03T15:17:22+08:00"

+++

Open up a terminal, and enter:

    rpm -qa | grep google-chrome

Look at see if you can find the installed chrome package, maybe not only one, just choice which one you want to uninstall, enter:

    rpm -e <chrome-package-name-here>

For example:

    rpm -e google-chrome-unstable-41.0.2224.3-1.x86_64


**rpm -e** is a way to remove packege in fedora.

>***Note**: this post based on [http://superuser.com/questions/281726/how-do-i-uninstall-google-chrome-in-fedora](http://superuser.com/questions/281726/how-do-i-uninstall-google-chrome-in-fedora)*
