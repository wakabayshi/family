account=%w(佐藤 鈴木 高橋 田中 伊藤 渡辺 山本 中村 小林 加藤)
(1).upto(10) do |idx|
  Appointment.create(
    account: Account.find(idx),
    department: Department.find(2),
    period:Period.find(2)
  )
end
Appointment.create(
  account: Account.find(1),
  department: Department.find(2),
  period:Period.find(3)
)
