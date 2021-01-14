names=["内科","外科","産婦人科"]
0.upto(2) do |idx|
  Department.create(
    name: "#{names[idx%3]}"
  )
end