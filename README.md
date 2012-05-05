Gitignore Gem
=============
Command line program that allows to generate .gitignore files base on prefenined templates (in the future you will be able to create your own templates)


DISCLAIMER  !!!
-----------
The gem is on beta, use at your own risk !!!! (e.g. you could lose your .gitignore if the template is not found :( )


Installation
-----------

    gem install gitignore


Usage
-----
Let say we want to create  a gitignore file for a project in a mac, and our project will use ruby, we would execute:


    gitignore OSX ruby

ouput:
-----
    #######OSX#########

	.DS_Store

	# Thumbnails
	._*

	# Files that might appear on external disk
	.Spotlight-V100
	.Trashes

	#####################


	########ruby#########

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

	#####################


Or let say our  project is on linux, and we will use django, and of course python , SASS, and emacs

    gitignore Django Linux Python SASS emacs
 

ouput
-----
Too long to put in here :)

templates
-----
you can find a list of all templates here 

[Github Templates] (https://github.com/github/gitignore/)

I will add a `gitignore -list` (some day)

Contributing
------------

1. Fork it.
2. Create a branch (`git checkout -b my_gitignore`)
3. Commit your changes (`git commit -am "Added nyancat"`)
4. Push to the branch (`git push origin my_gitignore`)
5. Create an [Issue](https://github.com/DavidToca/gitignore-gem/issues) with a link to your branch
6. Enjoy a refreshing Diet Coke and wait