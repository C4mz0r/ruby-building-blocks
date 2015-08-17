def caesar_cipher(message, shift)
	shift %= 26
	encoded = ""
	a = nil, z = nil # used to do comparisons against "a-z" and "A-Z"
	message.split("").each do |original|
		shifted = original.ord

		if (original == original.capitalize) then
			a = "A"
			z = "Z"
		else
			a = "a"
			z = "z"
		end
		
		if (original >= a and original <= z) then
			shifted = original.ord + shift
			if (shifted < a.ord) then
				shifted += 26
			elsif (shifted > z.ord) then
				shifted -= 26
			end
		end
		encoded += shifted.chr		
	end
	encoded
end

# tests
=begin
puts caesar_cipher("Abc", 1) + " - should equal Bcd"
puts caesar_cipher("b", 1) + " - should equal c"
puts caesar_cipher("What a string!", 5) + " - should equal Bmfy f xywnsl!"
puts caesar_cipher("What a string!", 5+26*1000) + " - should equal Bmfy f xywnsl!"
puts caesar_cipher("Z", 1) + " - should equal A"
puts caesar_cipher("z", 1) + " - should equal a"
puts caesar_cipher("A", 25) + " - should equal Z"
puts caesar_cipher("A", -1) + " - should equal Z"
puts caesar_cipher("a", -1)  + " - should equal z"
=end
