# YTS

A gem for accessing the YTS API. For more information please visit https://yts.ag/api

## Installation

Add this line to your application's Gemfile:

    gem 'yts-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yts-ruby

## Usage

Examples


## List Movies

Used to list and search through out all the available movies. Can sort, filter, search and order the results

```ruby
yts = YTS::Movie.list('json') # Results in JSON Format
yts = YTS::Movie.list('jsonp', {'limit'=>'10', 'page'=>'2', 'quality'=>'3D'}) # Results in JSONP Format
yts = YTS::Movie.list('xml', {'limit'=>'20', 'page'=>'3', 'quality'=>'3D', 'minimum_rating'=>'5'}) # Results in XML Format
```

## Movie Details

Returns the information about a specific movie

```
yts = YTS::Movie.details('json', {'movie_id'=>'10'})
```

## Get Magnet URL

To get Magnet URL use following which requires TORRENT_HASH, and ENCODED_MOVIE_URL as arguments:

```
yts = YTS::Movie.make_magnet('F0B9DEE4BF17E60B111BAD37B281AFF634B24C99', 'https://yts.ag/movie/beyond-the-call-to-duty-2016')
```

## Movie Suggestions

Returns 4 related movies as suggestions for the user

```
yts = YTS::Movie.suggestions('json', {'movie_id'=>'10'})
```

## Movie Comments

Returns all the comments for the specified movie

```
yts = YTS::Movie.comments('json', {'movie_id'=>'10'})
```

## Movie Reviews

Returns all the comments for the specified movie

```
yts = YTS::Movie.reviews('json', {'movie_id'=>'10'})
```

## Movie Parental Guides

Returns all the parental guide ratings for the specified movie

```
yts = YTS::Movie.parental_guides('json', {'movie_id'=>'10'})
```

## List Upcoming

Returns the 4 latest upcoming movies

```
yts = YTS::Movie.upcoming('json', {'movie_id'=>'10'})
```

## User Details

Get the user details

```
yts = YTS::Movie.user_details('json', {'user_id'=>'10'})
```

## Get User Key

The same as logging in, if successful the returned data will include the user_key for later use of the API as a means of authentication

```
yts = YTS::Movie.user_key('json', {'username'=>'your-username', 'password'=>'your-password', 'application_key'=>'application-key'})
```

## User Profile

This endpoint will return the full information about an authenticated user

```
yts = YTS::Movie.user_profile('json', {'user_key'=>'1e2b2baddff6234'})
```

## Edit User Settings

Endpoint is used to edit an authenticated user's profile settings

```
yts = YTS::Movie.user_edit_settings('json', {'user_key'=>'1e2b2baddff6234', 'application_key'=>'application-key', 'new_password'=>'new-password', 'about_text'=>'about-text', 'avatar_image'=>'avatar-image'})
```

## Register User

Endpoint is used register a new user

```
yts = YTS::Movie.register_user('json', {'user_key'=>'1e2b2baddff6234', 'application_key'=>'application-key', 'new_password'=>'new-password', 'about_text'=>'about-text', 'avatar_image'=>'avatar-image'})
```

## Forgot User Password

Endpoint is used to get a password reset code sent to their email to in case the user forgot their password

```
yts = YTS::Movie.forgot_password('json', {'email'=>'vajapravin23@gmail.com', 'application_key'=>'application-key'})
```

## Reset User Password

Endpoint is used to reset the user's password using the password reset code

```
yts = YTS::Movie.reset_password('json', {'reset_code'=>'asdfasdfasdfasdf', 'new_password'=>'your-new-password', 'application_key'=>'application-key'})
```

## Like Movie

Endpoint is used to send a like (heart) for a specific movie

```
yts = YTS::Movie.like_movie('json', {'user_key'=>'1e2b2baddff6234', 'movie_id'=>'17', 'application_key'=>'application-key'})
```

## Get Movie Bookmarks

Endpoint is used to get all the current movies which have been bookmarked for a given user

```
yts = YTS::Movie.get_bookmarks('json', {'user_key'=>'1e2b2baddff6234', 'with_rt_ratings'=>'9'})
```

## Add Movie Bookmark

Endpoint is used to add any specific movie to the user's bookmarks

```
yts = YTS::Movie.add_bookmarks('json', {'user_key'=>'1e2b2baddff6234', 'movie_id'=>'9', 'application_key'=>'application-key'})
```

## Delete Movie Bookmark

Endpoint is used remove movies from the user's bookmarks

```
yts = YTS::Movie.delete_bookmarks('json', {'user_key'=>'1e2b2baddff6234', 'movie_id'=>'9', 'application_key'=>'application-key'})
```

## Make Comment

Endpoint is used allow a user to post a comment on a specific movie

```
yts = YTS::Movie.make_comment('json', {'user_key'=>'1e2b2baddff6234', 'movie_id'=>'9', 'comment_text'=>'comment-text', 'application_key'=>'application-key'})
```

## Like Comment

Endpoint is used allow a user like (heart) a comment

```
yts = YTS::Movie.like_comment('json', {'user_key'=>'1e2b2baddff6234', 'comment_id'=>'9', 'application_key'=>'application-key'})
```

## Report Comment

Endpoint is used allow a user to report a comment

```
yts = YTS::Movie.report_comment('json', {'user_key'=>'1e2b2baddff6234', 'comment_id'=>'9', 'application_key'=>'application-key'})
```

## Delete Comment

Endpoint is used allow a user to delete a comment (assuming its their own)

```
yts = YTS::Movie.delete_comment('json', {'user_key'=>'1e2b2baddff6234', 'comment_id'=>'9', 'application_key'=>'application-key'})
```

## Make Request

Endpoint is used allow a user to delete a comment (assuming its their own)

```
yts = YTS::Movie.make_request('json', {'user_key'=>'1e2b2baddff6234', 'movie_title'=>'The Great Wall 2017', 'request_message'=>'Can you please upload this movie torrent?', 'application_key'=>'application-key'})
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Let’s build something great:

I’d love to design & build your next big idea, or lend a hand on an existing project.

	Email - vajapravin23@gmail.com
	Website - http://vajapravin.com
	
![alt tag](https://yts.ag/assets/images/website/logo-YTS.svg)
