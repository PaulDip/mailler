require 'faker'

3.times do
  my_category = Category.create(title: Faker::Book.genre)
  3.times do
    my_task = Task.new(title: Faker::Book.title,
                      deadline: Faker::Date.forward(23),
                      image: Faker::Avatar.image)
    my_task.category = my_category
    my_task.save
  end
end

def email_seed
	10.times do |index|
		email = Email.create!(object: Faker::Dog.name, body: Faker::ChuckNorris.fact)
	end
end

def perform
	email_seed
end

perform
