def print_result(top)
  stop = 0
  top.each do |name, count|
    if stop == 5
      break
    else
      puts "#{name} \t #{count}"
      stop += 1
    end

  end
end

path = "test_data"
Dir.chdir(path)
data =  Dir.glob("**/*")

expansion = data.map { |item| File.extname(item) }.reject(&:empty?)

top = expansion.uniq.to_h { |x| [x.to_sym, expansion.count(x)] }.sort_by { |key, value| -value }

print_result top