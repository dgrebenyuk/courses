### Learn
1. Validations - <http://guides.rubyonrails.org/v3.2/active_record_validations_callbacks.html#validation-helpers>
2. Polymorphic association - <http://guides.rubyonrails.org/v3.2/association_basics.html#polymorphic-associations>
3. \*If you have free time: STI association - <https://rubydev.ru/2011/07/rdr3t-single-table-inheritance-rails/>

### Prepare
Create models (tables) to cover next architecture:  
```
User:
=> first_name
=> last_name
=> username
=> password
=> email
=> birthday

Post:
=> title
=> body
=> published_at

Image:
=> url
```
### Tasks
1. Associations:
 * user has many posts
 * image can be associated with User and Post (polymorphic)
2. Validations:
 * username and email should be unique
 * password should be min 8-chars long
 * username, email and password are required fields
3. Scopes:
 * all published posts
 * all users older than 18 years
4. Add User instance method: `full_name`
