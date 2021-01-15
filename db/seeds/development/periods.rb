time=%w(月曜午前 月曜午後 火曜午前 火曜午後 水曜午前 水曜午後 木曜午前 木曜午後 金曜午前 金曜午後)
names=["Dr1","Dr2","Dr3"]
d1=Date.new(2020,1,18)
0.upto(9) do |idx|
  period=Period.create(
    doctor: Doctor.find_by(name: names[idx%3]),
    time: time[idx%10],
    number: 0,
    maxnumber: 10,
    before: (idx%2==0),
    date: d1
  )

  # for num in 1..73 do
    if idx%10==0 || idx%10==1
      period.date=d1+
      period.save
    elsif idx%10==2|| idx%10==3
      period.date=d1+1
      period.save
    elsif idx%10==4|| idx%10==5
      period.date=d1+2
      period.save
    elsif idx%10==6|| idx%10==7
      period.date=d1+3
      period.save
    elsif idx%10==8|| idx%10==9
      period.date=d1+4
      period.save
    end
  
end