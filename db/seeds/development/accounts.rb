names=["Taro" ,"Jiro" ,"Hana" ,"John"]
0.upto(3) do |idx|
  Account.create(
    name: "#{names[idx%4]}",
    password: "asagao!",
    password_confirmation: "asagao!"
  )
end