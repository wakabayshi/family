names=["佐藤","鈴木","高橋"]
dnames=["整形外科","外科","内科"]
d1=Department.find_by(name: "外科")
0.upto(2) do |idx|
  Doctor.create(
    department: Department.find_by(name: "#{dnames[idx%3]}"),
    name: "#{names[idx%3]}",
    password: "asagao!",
    password_confirmation: "asagao!"
  )
end

