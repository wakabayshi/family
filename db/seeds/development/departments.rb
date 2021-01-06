names=["整形外科","皮膚科","内科"]
0.upto(2) do |idx|
  Department.create(
    name: "#{names[idx%3]}"
  )
end