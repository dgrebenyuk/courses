### Overview
Code should get image from the URL and save to local file using backend HTTP client.

### Implementation Steps
1. Create class Image
2. Add class method download(url)
3. Use `faraday` to get response from url
4. Raise exceptions: wrong url(status codes 4xx, 5xx), file is not an image(content-type). (ArgumentError, TypeError)
5. Get image from that url and save to file (download.<original_extention>)
6. Rubocop check

**Note:** you can debug using pry gem. Just write `require pry; binding.pry` in line where you want to have a breakpoint and run your code

### Gems
- <https://github.com/lostisland/faraday>
- <https://github.com/bbatsov/rubocop>
- <https://github.com/pry/pry>

### Useful Links

- <https://www.hello.com/img_/hello_logo_hero.png> AND <http://apikabu.ru/img_n/2012-04_4/zky.jpg>
- <https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol>
- <https://ruby-doc.org/core-2.2.0/String.html#method-i-split>
- <https://irb.rocks/multiple-assignments-in-ruby/>
- <https://ruby-doc.org/core-2.2.0/Exception.html>
- <https://ruby-doc.org/core-2.2.0/File.html#method-c-open>
- <http://rubular.com>
