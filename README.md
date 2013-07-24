
Railscast sm-rc89
==================

Page Caching..
Its a caching technique , which allow to fulfill the request by web server instead by rails.
A page is cached into a file , which then is served by front end server.
If you want to reduce the amount of times your Rails app hits the database then why not add some page caching.

Make repo..
```
cd sm-rc89
```

Clone..
```
git clone "https://github.com/sweetymehta/sm-rc89.git"
```

Create Scaffolding..
```
#todo
```
use will_paginate to better understand..
```
gem 'will_paginate'
```

by default turned off, Go to development.rb
```
config.action_controller.perform_caching = true
```
apply caching to any action u want in controller
```
caches_page :index
```
problems in using cache..
```
1. it will show same page even u go to next page using pagination
2. updating, deleting , creating will have no effects to cached page effects .
```
Solutions to above probelms
```
1. make change in route.rb
    get 'products/page/:page' , to: 'products#index'
2. use expire_page when u are going to do any change and want to clear its old_version from cache
    refer controller in this doc

```        
Use Sweeper
```
Sweeper help to implemnt DRY.. Sweeper uses observer to observe action that occur. As it occur it expire cached page

See app/sweepers/product_sweeper.rb
```
To apply effect run server
```
rails s
```

