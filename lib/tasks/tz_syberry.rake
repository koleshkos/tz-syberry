require 'rake'

MAX_TOP = 5

def print_result(sorted_files)
  sorted_files.take(MAX_TOP).each do |name, count|
    puts "#{name} \t #{count}"
  end
end

def sorted(files)
  extensions = files.map { |file| File.extname(file) }.reject(&:empty?)
  extensions
    .reduce(Hash.new(0)) do |result, ext|
      result[ext] += 1
      result
    end
    .sort_by { |_, count| count }.reverse
end

namespace :custom_command do
  task :top_five, [:path] do |task, path|
    files = Dir.glob("#{path[:path]}/**/*")
    puts "Top #{MAX_TOP} file formats in #{path[:path]} folder:"
    print_result(sorted(files))
  end
end