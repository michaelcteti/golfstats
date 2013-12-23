task(:coffeelint).clear

task :coffeelint do
  file_pattern = '{app,spec}/**/*.coffee*'

  config = {
    max_line_length: {
      level: 'error',
      value: 99
    }
  }

  results = Dir.glob(file_pattern).map { |f| Coffeelint.run_test(f, config) }

  unless results.all?
    abort
  end
end
