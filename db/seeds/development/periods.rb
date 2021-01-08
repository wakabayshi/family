time=%w(月曜午前 月曜午後 火曜午前 火曜午後 水曜午前 水曜午後 木曜午前 木曜午後 金曜午前 金曜午後)
names=["Dr1","Dr2","Dr3"]
0.upto(9) do |idx|
  period=Period.create(
    doctor: Doctor.find_by(name: names[idx%3]),
    time: time[idx%10],
    maxnumber: 10,
    date: "2000/#{rand(12)}/#{rand(30)}"
  )
end