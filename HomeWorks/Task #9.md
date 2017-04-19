### Overview
Implement AJAX edit for posts

### Requirements
* If you are the author of post you should also see `Edit` button near it.
* When you press `Edit` form should appear instead of appropriate fields (Title
  should be replaced with text field, Body - with text area, Edit - with Save )
* After changes it should return to original post design but with new data
* ***Extra task*** Use WYSIWYG html editor

### Gems
- CKEditor <https://github.com/galetahub/ckeditor>
- Best In Place <https://github.com/bernat/best_in_place>

### HINTS
- RailsCast <http://railscasts.com/episodes/302-in-place-editing?view=asciicast>
- If you want text inside post to use HTML formatting then use `html_safe` method. (e.g.`post.body.html_safe`) 
