def run wp
  puts "file changed: " + wp[0]
  puts "==========begin==========="
  the_tests = Dir.glob('tests/*')
  the_tests.each do |f|
    puts `ruby #{ f }`
  end
  puts "========== end ==========="
end

watch ('.*.rb$') { |wp| run wp }
