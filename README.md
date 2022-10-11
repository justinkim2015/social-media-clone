# README

To-do

Okay, I thought it would be pretty straightforward to fix this bug with "Sorry something went wrong" but now I'm kind of lost.  below is the setup I've done so far for my omniauth but I'm still getting the page error from facebook shown above.  I made two buttons, one with turbo enabled and one with it disabled just to see if it changes anything at the moment but it doesn't yet.  

I read that possibly my redirect_uri might be wrong 

```
class User < ApplicationRecord

devise :database_authenticatable, :registerable,
       :recoverable, :rememberable, :validatable,
       :omniauthable, omniauth_providers: %i[facebook]
```
```
config.omniauth :facebook, "APP_ID", "APP_SECRET", scope: 'email', info_fields: 'email,name'
```
```
    <%= button_to "(turbo-off)Sign in with #{OmniAuth::Utils.camelize(provider)}", omniauth_authorize_path(resource_name, provider),       :data =>{turbo: false} %><br />

    <%= button_to "(turbo-on)Sign in with Facebook", user_facebook_omniauth_authorize_path %>
```