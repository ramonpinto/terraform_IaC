require 'yaml'
require 'fileutils'

# You may want to change this.
def modules_path
  'modules/'
end

# You may want to change this.
def terrafile_path
  'terrafile'
end

def read_terrafile
  if File.exist? terrafile_path
    YAML.load_file terrafile_path
  else
    fail('[*] Terrafile does not exist')
  end
end

def create_modules_directory
  unless Dir.exist? modules_path
    puts "[*] Creating Terraform modules directory at '#{modules_path}'"
    FileUtils.makedirs modules_path
  end
end

def delete_cached_terraform_modules
  puts "[*] Deleting cached Terraform modules at '#{modules_path}'"
  FileUtils.rm_rf modules_path
end

desc 'Fetch the Terraform modules listed in the Terrafile'
task :get_modules do
  terrafile = read_terrafile

  create_modules_directory
  delete_cached_terraform_modules

  terrafile.each do |module_name, repository_details|
    source  = repository_details['source']
    version = repository_details['version']
    puts "[*] Checking out #{version} of #{source} ..."

    Dir.mkdir(modules_path) unless Dir.exist?(modules_path)
    Dir.chdir(modules_path) do
      `git clone -b #{version} #{source} #{module_name} &> /dev/null`
    end
  end
end

