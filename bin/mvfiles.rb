File.open("mytest.txt", "r") do |infile|
  while (line = infile.gets)
    line = line.split.join("\n")
    `mv #{line} out/`
  end
end
