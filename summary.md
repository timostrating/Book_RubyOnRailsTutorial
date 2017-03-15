# Summary




### Chapter 1
```
rails _5.0.1_ new APPNAME
bundle install
```


<br/>
### Chapter 2
```
rails generate scaffold User name:string email:string
rails db:migrate
```


<br/>
### Chapter 3
Full command	| Shortcut
--- | ---
$ rails server |	$ rails s
$ rails console	| $ rails c
$ rails generate	| $ rails g
$ rails test	| $ rails t
$ bundle install	| $ bundle

Je kan een commando ook wer ongedaan maken
```
$ rails generate controller StaticPages home help
$ rails destroy  controller StaticPages home help
```

The hypertext transfer protocol (HTTP) defines the basic operations
GET, POST, PATCH, and DELETE

``` ruby
test "should get home" do
  get static_pages_home_url
  assert_response :success
end
```


<br/>
### Chapter 4

``` ruby
>> "foobar".length        # Passing the "length" message to a string
=> 6
```

``` ruby
>> "foobar".empty?
=> false
>> "".empty?
=> true
```

``` ruby
>> s = "foobar"
>> if s.empty?
>>   "The string is empty"
>> else
>>   "The string is nonempty"
>> end
=> "The string is nonempty"
```

``` ruby
>> "foobar".include?("foo")        # Passing the "length" message to a string
=> true
```

Alles in Ruby is a Object, nil is dus ook een Object

``` ruby
>> nil.to_s
=> ""
```

``` ruby
>> nil.empty?
NoMethodError: undefined method `empty?' for nil:NilClass
>> nil.to_s.empty?      # Message chaining
=> true
```


Commando	| Betekenis
--- | ---
.length | Geeft de lengte terug
.empty? |	is waar als het gelijk is aan ""
include?("foo")	| waar als de waarde in de parameter in de variabele zit.
.nil?| waar als het een nil object is

a = [42, 8, 17] |
--- | ---
a.empty? | false
a.include?(42) | true
a.sort | [8, 17, 42]
a.reverse |  [17, 8, 42]
a.shuffle | [??, ??, ??]
a | [42, 8, 17]
a.sort! | [8, 17, 42]
a | [8, 17, 42]

array = []
hash = {}


``` ruby
class User
  attr_accessor :name, :email

  def initialize(attributes = {})    # <-- this wil automaticly be called with User.new
    @name  = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end

user = User.new({name: "Jhon", email: "jhon@wow.nl"})

# Dit is alle drie mogelijk
stylesheet_link_tag('application', {:media => 'all', :data-turbolinks-track => 'reload'})
stylesheet_link_tag('application', {media: 'all', 'data-turbolinks-track': 'reload'})
stylesheet_link_tag('application',  media: 'all', 'data-turbolinks-track': 'reload')
stylesheet_link_tag 'application',  media: 'all', 'data-turbolinks-track': 'reload'
```
