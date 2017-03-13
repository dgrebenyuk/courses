### Overview
Code should send notifications to cell phones and emails

### Implementation Steps
1. Create module `Notification`
2. Add class method `log` and instance methods `add_to_log(recepient)` and `send_message(recepient)`
3. Create two classes `Email` and `Sms` and use `Notification` module in them
4. Raise exceptions: wrong email format, wrong number and write to appropriate log file with `add_to_log` method (email.log, sms.log)
5. Class method `log` should show log file for this class
6. Module `send_message` should puts 'Sending Email to example@mail.com' or 'Sending SMS to +380671234567' and have run block code

**Hint** to determine type you can use `self.class` in instance methods and `self.name` for class methods

**Note:** you can debug using pry gem. Just write `require pry; binding.pry` in line where you want to have a breakpoint and run your code

### Additional Task
1. Create module `Service`
2. Add class `Deliver` (using modules as namespaces)
3. Add two methods to `Deliver` -> `sms` and `email`
4. Call these methods from `Notification#send_message` according to type (one line solution)
