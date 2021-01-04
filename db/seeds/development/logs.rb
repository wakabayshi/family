names=["骨折" ,"コロんs" ,"Hana" ,"John"]
0.upto(3) do |idx|
  Log.create(
    account: Account.find_by(id: idx%4+1),
    doctor: Doctor.find_by(id: idx%3+1),
    symptom: "#{names[idx%4]}"
  )
end