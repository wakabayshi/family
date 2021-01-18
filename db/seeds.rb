table_names=%w(days accounts departments doctors logs periods appointments admins)
table_names.each do |table_name|
  path = Rails.root.join("db/seeds", Rails.env, table_name+ ".rb")
  if File.exist?(path)
    puts "Crearing #{table_name}..."
    require path
  end
end
