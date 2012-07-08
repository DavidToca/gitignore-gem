Gitignore Gem
=============
Command line program that allows to generate .gitignore files base on predefined templates (in the future you will be able to create your own templates)


DISCLAIMER  !!!
-----------
The gem is on beta, use at your own risk !!!! (e.g. you could lose your .gitignore if the template is not found :( )


Installation
-----------

    gem install gitignore


Usage
-----

	Usage: gitignore NAMES_OF_TEMPLATES [OPTIONS]

	Example: gitignore android osx eclipse

	Options

   	 -h, --help                       help

    	-o, --overwrite                  overwrite the contents of  existing gitignore file

    	-l, --list                       prints all possible templates

Example
-----
Let say we want to create  a gitignore file for a project in a mac, and our project will use ruby, we would execute:


    gitignore OSX ruby

ouput:
-----
    #********** OSX **********

	.DS_Store

	# Thumbnails
	._*

	# Files that might appear on external disk
	.Spotlight-V100
	.Trashes

	#********** ruby **********

	*.gem
	*.rbc
	.bundle
	.config
	coverage
	InstalledFiles
	lib/bundler/man
	pkg
	rdoc
	spec/reports
	test/tmp
	test/version_tmp
	tmp

	# YARD artifacts
	.yardoc
	_yardoc
	doc/

Or let say our  project is on linux, and we will use django, and of course python , SASS, and emacs

    gitignore Django Linux Python SASS emacs
 
templates
-----

This gem use the github templates, you can check it at

[Github Templates] (https://github.com/github/gitignore/)

or you can just execute 

   gitignore --list

I recommend you to use it in combination with grep as follows
 
   gitignore --list | grep 'Text'


Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b my_gitignore`)
3. Commit your changes (`git commit -am "Added nyancat"`)
4. Push to the branch (`git push origin my_gitignore`)
5. Create an [Issue](https://github.com/DavidToca/gitignore-gem/issues) with a link to your branch
6. Enjoy a refreshing Diet Coke and wait