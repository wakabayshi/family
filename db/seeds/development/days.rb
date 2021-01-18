time=%w(月曜午前 月曜午後 火曜午前 火曜午後 水曜午前 水曜午後 木曜午前 木曜午後 金曜午前 金曜午後)
names=["Dr1","Dr2","Dr3"]
d1=Date.new(2020,1,18)
0.upto(29) do |idx|
  day=Day.create(
    date:d1
  )
  # 1周目
  if idx==0 || idx==1
    day.date=d1
    day.save
  elsif idx==2||idx==3
    day.date=d1+1
    day.save
  elsif idx==4||idx==5
    day.date=d1+2
    day.save
  elsif idx==6||idx==7
    day.date=d1+3
    day.save
  elsif idx==8||idx==9
    day.date=d1+4
    day.save
 #2周目  
  elsif idx==10||idx==11
    day.date=d1+7
    day.save
  elsif idx==12||idx==13
    day.date=d1+8
    day.save
  elsif idx==14||idx==15
    day.date=d1+9
    day.save
  elsif idx==16||idx==17
    day.date=d1+10
    day.save
  elsif idx==18||idx==19
    day.date=d1+11
    day.save
  #3周目  
  elsif idx==20||idx==21
    day.date=d1+14
    day.save
  elsif idx==22||idx==23
    day.date=d1+15
    day.save
  elsif idx==24||idx==25
    day.date=d1+16
    day.save
  elsif idx==26||idx==27
    day.date=d1+17
    day.save
  elsif idx==28||idx==29
    day.date=d1+18
    day.save
  end
end
