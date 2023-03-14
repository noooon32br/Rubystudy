def to_hex(r, g, b)
  '#' +
  r.to_s(16).rjust(2, '0')+
  g.to_s(16).rjust(2, '0')+
  b.to_s(16).rjust(2, '0')
end

# puts 0.to_s(16)
# puts 255.to_s(16)