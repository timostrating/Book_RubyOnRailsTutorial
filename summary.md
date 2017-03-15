# Summary




### Chapter 1
```
rails _5.0.1_ new APPNAME
bundle install
```

### Chapter 2
```
rails generate scaffold User name:string email:string
rails db:migrate
```

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


### Chapter 4
