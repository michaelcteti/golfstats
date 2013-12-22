task :brakeman do
  unless system('brakeman -i config/brakeman.ignore -z')
    exit 1
  end
end
