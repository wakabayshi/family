names=%w(佐藤 鈴木 高橋 田中 伊藤 渡辺 山本 中村 小林 加藤)
0.upto(9) do |idx|
  Account.create(
    name: "#{names[idx]}",
    password: "asagao!",
    password_confirmation: "asagao!"
  )
end