class UsersController

index => get route for resource '/users'
show => get route for '/users/:id'

edit =>
update =>

new ~ create
destroy ~ delete



1. scaffolding
  rails generate scaffold (Name) (attribute:datatype)
  - talk about what http routes map to rails routes + action
  - show difference between Sinatra route.rb file and Rails locales/routes.rb
  - go through the 7 basic CRUD actions
  * go back in and talk about excess code that appears, (datatypes), and extraneous routes

2. parameters

 - different ways to pass params
 - rails converts params to hash

 /products
 /products?

class ClientsController < ActionController::Base
  # This action uses query string parameters because it gets run
  # by an HTTP GET request, but this does not make any difference
  # to the way in which the parameters are accessed. The URL for
  # this action would look like this in order to list activated
  # clients: /clients?status=activated
  def index
    if params[:status] == "activated"
      @clients = Client.activated
    else
      @clients = Client.unactivated
    end
  end
 
  # This action uses POST parameters. They are most likely coming
  # from an HTML form which the user has submitted. The URL for
  # this RESTful request will be "/clients", and the data will be
  # sent as part of the request body.
  def create
    @client = Client.new(params[:client])
    if @client.save
      redirect_to @client
    else
      # This line overrides the default rendering behavior, which
      # would have been to render the "create" view.
      render :action => "new"
    end
  end
end


- formatting in URL params to an array: GET /clients?ids[]=1&ids[]=2&ids[]=3


3. Sessions
- 4 ways to store cookies
  ActionDispatch::Session::CookieStore – Stores everything on the client.
  ActiveRecord::SessionStore – Stores the data in a database using Active Record.
  ActionDispatch::Session::CacheStore – Stores the data in the Rails cache.
  ActionDispatch::Session::MemCacheStore – Stores the data in a memcached cluster (this is a legacy implementation; consider using CacheStore instead).

- accessing session is same as Sinatra
- to clear a specific key, set it to nil

  class ApplicationController < ActionController::Base
 
  private
 
  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by_id(session[:current_user_id])
  end
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url
  end
end

4. Flash

class LoginsController < ApplicationController
  def destroy
    session[:current_user_id] = nil
    flash[:notice] = "You have successfully logged out"
    redirect_to root_url
  end
end

redirect_to root_url, :notice => "You have successfully logged out"

- example of flash.keep, persist flash instead of deleting
class MainController < ApplicationController
  # Let's say this action corresponds to root_url, but you want
  # all requests here to be redirected to UsersController#index.
  # If an action sets the flash and redirects here, the values
  # would normally be lost when another redirect happens, but you
  # can use 'keep' to make it persist for another request.
  def index
    # Will persist all flash values.
    flash.keep
 
    # You can also use a key to keep only some kind of value.
    # flash.keep(:notice)
    redirect_to users_url
  end
end

- example of flash.now, flash is by default only avail to next request, if you
want flash available in the same request, use flash.now

class ClientsController < ApplicationController
  def create
    @client = Client.new(params[:client])
    if @client.save
      # ...
    else
      flash.now[:error] = "Could not save client"
      render :action => "new"
    end
  end
end

5. Cookies
- similar to sessions

cookies[:this] = that

6. go back to scaffold and talk about render different types of data

7. Filters

  a. before

  class ApplicationController < ActionController::Base
  before_filter :require_login
 
  private
 
  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end
 
  # The logged_in? method simply returns true if the user is logged
  # in and false otherwise. It does this by "booleanizing" the
  # current_user method we created previously using a double ! operator.
  # Note that this is not common in Ruby and is discouraged unless you
  # really mean to convert something into true or false.
  def logged_in?
    !!current_user
  end


  b. around
   - scope of the filter is wrapped around the controller
   - transactional filter, if there's an error, rollback filter
  c. after
  - effect of filter happens after the controller action

  d. skipping a filter

  class LoginsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  end

8. Request and Response Object
- objects available in every controller
- response.headers["Content-Type"] = "application/pdf"

outside resources:

1. http://railscasts.com/episodes/395-action-controller-walkthrough
2.

















