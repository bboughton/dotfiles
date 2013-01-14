require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  files = Dir['*.symlink']
  files.each do |file|
    puts "linking ~/.#{file.gsub(/\.symlink$/,'')}"
    system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file.gsub(/\.symlink$/,'')}"}
  end
end
