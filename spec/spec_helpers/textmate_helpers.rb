def inspect_mate(label="")
  puts "#{label}#{': ' unless label.empty?}#{yield.inspect.gsub(/</, '&lt;').gsub(/>/, '&gt;')}"
  puts "<hr/>"
end

def caller_mate(label="", options={})
  puts "#{label} call stack:<br/>"
  stacktraces = caller.dup
  stacktraces.reject!{|c| c.match(options[:exclude]) } if options[:exclude]
  
  stacktraces.each {|c| puts "  --  #{c}<br/>"}
  puts "<hr/>"
end
