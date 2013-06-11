# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Article.all.each do |article|
  tags = article.read_attribute(:tags)
  if tags.empty?
    ""
  else
    tags = tags.split(',')
    tags.each do |tag|
      article.tags << Tag.find_or_create_by_title(tag)
    end
  end
end

  Article.all.each do |a|
    cat = Category.find_or_create_by_name(a.read_attribute(:category))
    a.update_attributes(category_id: cat.id)
  end
