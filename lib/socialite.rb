module Socialite
  
  def socialite(options)
    url   = options[:url]
    title = options[:title]
    
    unless url.present? && title.present?
      RAILS_DEFAULT_LOGGER.warn "Socialite requires a URL and title!"
    else    
      links = { 
        :delicious   => "http://www.del.icio.us/post?url=#{url}&title=#{title}",
        :digg        => "http://www.digg.com/submit?url=#{url}&title=#{title}",
        :facebook    => "http://www.facebook.com/share.php?u=#{url}",
        :reddit      => "http://www.reddit.com/submit?url=#{url}&title=#{title}",
        :stumbleupon => "http://www.stumbleupon.com/submit?url=#{url}&title=#{title}",
        :technorati  => "http://www.technorati.com/faves?add=#{url}&title=#{title}",
        :twitter     => "http://www.twitter.com/?status=#{title}: #{url}",
        :email       => "mailto:?subject=#{title}&body=#{title}: #{url}"
      }.inject("") do |stack, (site, submit_url)|
        stack << "<a href='#{submit_url}'><img src='/images/socialite/#{site}_16.png'></a>"
      end
    
      <<-END
        <div id="socialite">
          <span class="advert">
            <a href="http://github.com/mdarby/socialite">
              Socialite
            </a>
          </span>
        
          <div id="links">
            #{links}
          </div>
        </div>
      END
    end
  
  end
end