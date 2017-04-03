users = [
  {name: 'Tom', surname: 'Smith', email: 'tom@gmail.com'},
  {name: 'Linda', surname: 'Johns', email: 'tom@gmail.com'},
  {name: 'Jack', surname: 'Duval', email: 'tom@gmail.com'},
  {name: 'John', surname: 'Shape', email: 'tom@gmail.com'}
]

users.each do |u|
  User.create u
end
