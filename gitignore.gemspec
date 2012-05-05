Gem::Specification.new do |s|
	s.name			=	'gitignore'
	s.version		=	'0.0.0'
	s.executables		=	'gitignore'
	s.date			=	'2011-05-04'
	s.summary		=	"Generate .gitignore files"
	s.description		=	"Use file templeates to create .gitignore files"
	s.authors		=	["David Toca"]
	s.email			=	'david.virusfel@gmail.com'
	s.files			=	Dir['Rakefile', '{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
	s.homepage		=	'http://rubygems.org/gems/gitignore'
	s.require_paths		=	["lib","bin"]
end