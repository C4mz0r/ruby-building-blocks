def substrings( phrase, substrings )
	findings = Hash.new(0)
	phrase.split.each do |word|
		substrings.each do |sub|
			if ( word.downcase.include?sub.downcase )				
				findings[sub] += 1
			end
		end
	end
	findings	
end

#tests

=begin
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Below", dictionary)

dictionary = ["low", "low"]
puts substrings("Below", dictionary)

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
puts 'Expected: {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}'
=end

