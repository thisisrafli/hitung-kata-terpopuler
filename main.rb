# HITUNG KATA TERPOPULER

print "Masukkan teks: "
input = gets.chomp.gsub(/[[:punct:]]/, "").downcase.split(" ")

def hitung_kata_terpopuler(text)
   
   total_text = {}
   
   (0...text.length).each do |i|
      if text[i] != text[i + 1]
         total_text[text[i]] = 0
      end
   end
   
   (0...text.length).each do |i|
      if text[i] == text[i]
         total_text[text[i]] += 1
      end
   end
   
   return total_text
   
end

sorted = hitung_kata_terpopuler(input).sort_by {|key, value| -value}

sorted.each do |key, value|
   puts "#{key} : #{value}"
end