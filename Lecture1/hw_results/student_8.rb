my_hash = {"yes"=>23, "b"=>"travel", "yesterday"=>34, 5=>"234", :yesss=>:fg, try: 30, key: "some value", "yesterday"=>34, "yesteryear"=>2014}.keys
my_hash.find_all{|key| key =~ /yes/}.size
