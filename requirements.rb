require 'open3'

# Define requirements
required_packages = [
  "ansible-galaxy"
]

required_roles = [
  "ansible-role-nginx"
]

def check_packages(names)
  names.each do |name|
    stdout, stderr, status = Open3.capture3("which #{name}")
    if !status.success?
      puts "error: package #{name} is not installed. Please consider to install required package."
      exit
    end
  end
end

def directory_exists?(directory)
  File.directory?(directory)
end

# Check requirements
check_packages(required_packages)
required_roles.each do |role|
  if !directory_exists?(role)
    stdout, stderr, status = Open3.capture3("ansible-galaxy install -r ansible/requirements.yml -p ansible/roles")
    if status.success?
      puts stdout
    else
      puts "failed to get required roles, please run ansible-galaxy install -r ansible/requirements.yml -p ansible/roles manually"
      exit
    end
  end
end
