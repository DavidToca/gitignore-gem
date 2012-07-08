class Gitignore

def self.list_gitignore_files

 template_dir=File.join(File.dirname(__FILE__),"gitignore","templates") 

 list_files = Dir.entries(template_dir)

 list_files.delete('.')
 list_files.delete('..')

 list_files.collect{|file| file.gsub(".gitignore","")  }


end

def  self.create_gitignore (file_names,overwrite)

		mode = overwrite ? 'w' : 'a'

		file_name=File.join(".", ".gitignore") 

		File::open(file_name,mode) do |f|

			file_names.each do |name|

                         f<<"\n##{'*' * 10 } #{name} template#{'*' * 10 } \n\n"

				begin

				#puts "Inserting #{name} settings" 

					template_file_name=File.join(File.dirname(__FILE__),"gitignore","templates","#{name}.gitignore") 

					#puts template_file_name

					file_content=File::read(template_file_name)
					f<<file_content unless file_content.nil?
					rescue =>err

						return "Exception: #{err}"
						#err

				end

				f<<" \n"
			end

		end

		return "Successful created"

	end

end

#if __FILE__ == $0
  # Do something.. run tests, call a method, etc. We're direct.
#  ignore =Gitignore.new
  #puts ignore.create_gitignore(['Linux','Eclipse','emacs``'],true)
#  puts ignore.create_gitignore(ARGV,false)
#end









