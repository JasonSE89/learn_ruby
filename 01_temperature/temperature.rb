def ftoc(far)
  ((far.to_f-32)/(1.80)).ceil
end

def ctof(cel)
  cel.to_f*1.8+32
end
