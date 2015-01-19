namespace :app do
  task :configure do
    Dir["config/*.example"].each do |f|
      f = File.absolute_path(f)
      `cp -n #{f} #{File.dirname(f)}/#{File.basename(f, '.example')}`
    end
  end
end
