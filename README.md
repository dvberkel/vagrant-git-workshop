git Workshop
============

This is a [vagrant][1] file that create a virtual machine that can be
used for a git workshop.

Usage
-----

This project relies on [submodules][2]. Run the following commands to
retrieve all the submodules.

    git submodule init
    git submodule update

Usage
-----

If [vagrant][1] is installed one can simple say

    vagrant up

See the [downloads page][3] for various versions of vagrant.

When the virtual box is started login with the vagrant user. To start
the graphical enviroment run

    startx

To setup a original repository goto the `scratch` directory and run
the following command

    ./setup.sh

Tips
----

* The `/vagrant` directory is a shared directory between the host and
  the client. 

[1]: http://vagrantup.com/ "Vagrant Homepage"
[2]: http://git-scm.com/book/en/Git-Tools-Submodules "Git documentation on submodules"
[3]: http://downloads.vagrantup.com/tags/v1.0.5 "Download page for vagrant"
