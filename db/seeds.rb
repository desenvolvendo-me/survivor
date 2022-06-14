if Rails.env.development?
  AdminUser.create!(email: 'admin@survivors.com', password: 'abc12345', password_confirmation: 'abc12345')


  user1 = User.create!(email: 'survivor1@gmail.com', password: 'abc12345', password_confirmation: 'abc12345')
  user2 = User.create!(email: 'survivor2@gmail.com', password: 'abc12345', password_confirmation: 'abc12345')

  #user1
  Survivor.create(name: "Bultrano", age: 45, gender: 'M', root: true, user: user1)
  Survivor.create(name: "Ciclana", age: 40, gender: 'F', user: user1)
  Survivor.create(name: "Fulano", age: 17, gender: 'M', user: user1)

  #user2
  Survivor.create(name: "Meltrano", age: 50, gender: 'M', root: true, user: user2)
end