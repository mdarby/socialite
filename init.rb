require 'socialite'

ActionView::Base.send :include, Socialite

RAILS_DEFAULT_LOGGER.debug "** [Socialite] loaded"