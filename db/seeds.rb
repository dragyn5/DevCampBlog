# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |blog| 
    Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, 
    ut fermentum massa justo sit amet risus. Cum sociis natoque 
    penatibus et magnis dis parturient montes, nascetur ridiculus mus. 
    Cras mattis consectetur purus sit amet fermentum. Morbi leo risus, porta ac 
    consectetur ac, vestibulum at eros. Vestibulum id ligula porta felis euismod semper."
    )
end

puts "10 blog posts created"

5.times do |skill|
Skill.create!(
  title: "Rails #{skill}",
  percent_utilized: 20
)
end
puts "5 skill points created"

9.times do |port_item|
  Portfolio.create!(
      title: "Portfolio title: #{port_item}",
      subtitle: "My great feet!",
      body: "Duis mollis, est non commodo luctus, nisi erat porttitor ligula, 
      eget lacinia odio sem nec elit. Nulla vitae elit libero,
       a pharetra augue. Vestibulum id ligula porta felis euismod semper.",
      main_image: "http://placehold.it/600x400",
      thumb_image: "http://placehold.it/350x200"
    )
end
  puts "created 9 portfolios"