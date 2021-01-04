time=%w(月曜午前 月曜午後 火曜午前 火曜午後 水曜午前 水曜午後 木曜午前 木曜午後 金曜午前 金曜午後 土曜午前 土曜午後 日曜午前 日曜午後)
0.upto(9) do |idx|
  Period.create(
    doctor: Doctor.find_by(id: idx%3+1),
    time: time[idx],
    maxnumber: 10,
    date: "2000-11-#{idx+1}"
  )
end