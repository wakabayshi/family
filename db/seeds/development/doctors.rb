names=["Dr1","Dr2","Dr3"]
dnames=["内科","外科","産婦人科"]
d1=Department.find_by(name: "外科")
0.upto(2) do |idx|
  Doctor.create(
    department: Department.find_by(name: "#{dnames[idx%3]}"),
    name: "#{names[idx]}",
    password: "asagao!",
    password_confirmation: "asagao!"
  )
end

