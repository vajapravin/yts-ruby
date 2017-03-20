module YTS
	class Movie < Document
    # List Movies
    def self.list(format, params = {})
      Client.make_request(Movie, "/list_movies", format, params)
    end

    # Movie Details
    def self.details(format, params = {})
      Client.make_request(Movie, "/movie_details", format, params)
    end

    # Movie Suggestions
    def self.suggestions(format, params = {})
      Client.make_request(Movie, "/movie_suggestions", format, params)
    end

    # Movie Comments
    def self.comments(format, params = {})
      Client.make_request(Movie, "/movie_comments", format, params)
    end

    # Movie Reviews
    def self.reviews(format, params = {})
      Client.make_request(Movie, "/movie_reviews", format, params)
    end

    # Movie Parental Guides
    def self.parental_guides(format, params = {})
      Client.make_request(Movie, "/movie_parental_guides", format, params)
    end

    # List Upcoming
    def self.upcoming(format, params = {})
      Client.make_request(Movie, "/list_upcoming", format, params)
    end

    # User Details
    def self.user_details(format, params = {})
      Client.make_request(Movie, "/user_details", format, params)
    end

    # Get User Key
    def self.user_key(format, params = {})
      Client.make_request(Movie, "/user_get_key", format, params)
    end

    # User Profile
    def self.user_profile(format, params = {})
      Client.make_request(Movie, "/user_profile", format, params)
    end

    # Edit User Settings
    def self.user_edit_settings(format, params = {})
      Client.make_request(Movie, "/user_edit_settings", format, params, 'post')
    end

    # Register User
    def self.register_user(format, params = {})
      Client.make_request(Movie, "/user_register", format, params, 'post')
    end

    # Forgot User Password
    def self.forgot_password(format, params = {})
      Client.make_request(Movie, "/user_forgot_password", format, params, 'post')
    end

    # Reset User Password
    def self.reset_password(format, params = {})
      Client.make_request(Movie, "/user_reset_password", format, params, 'post')
    end

    # Like Movie
    def self.like_movie(format, params = {})
      Client.make_request(Movie, "/like_movie", format, params, 'post')
    end

    # Get Movie Bookmarks
    def self.get_bookmarks(format, params = {})
      Client.make_request(Movie, "/get_movie_bookmarks", format, params)
    end

    # Add Movie Bookmark
    def self.add_bookmark(format, params = {})
      Client.make_request(Movie, "/add_movie_bookmark", format, params, 'post')
    end

    # Delete Movie Bookmark
    def self.delete_bookmark(format, params = {})
      Client.make_request(Movie, "/delete_movie_bookmark", format, params, 'post')
    end

    # Make Comment
    def self.make_comment(format, params = {})
      Client.make_request(Movie, "/make_comment", format, params, 'post')
    end

    # Like Comment
    def self.like_comment(format, params = {})
      Client.make_request(Movie, "/like_comment", format, params, 'post')
    end

    # Report Comment
    def self.report_comment(format, params = {})
      Client.make_request(Movie, "/report_comment", format, params, 'post')
    end

    # Delete Comment
    def self.delete_comment(format, params = {})
      Client.make_request(Movie, "/delete_comment", format, params, 'post')
    end

    # Make Request
    def self.make_request(format, params = {})
      Client.make_request(Movie, "/make_request", format, params, 'post')
    end

    # Make Magnet
    def self.make_magnet(hash, encode_url)
      Client.make_magnet(hash, encode_url)
    end
	end
end
