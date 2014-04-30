require 'google-search'

def search(phrase)
  args = {
    :query => phrase,
    :image_size => :xxlarge,
    :image_type => :photo
  }

  Google::Search::Image.new(args).map { |image| image.uri }
end

def write_content(image_uris)
  File.open('tmp/_body.html', 'w+') do |file|
    image_uris.each_with_index do |uri, i|

      # set the first item to be active
      classes = ["item"]
      classes << 'active'if i == 0

      file.write %(      <div class="#{classes.join(' ')}">\n)
      file.write %(        <img src="#{uri}" alt="">\n)
      file.write %(      </div>\n\n)
    end
  end
end

def build_html
  File.open("www/index.html", 'w+') do |file|
    file.write open("partials/_head.html").read
    file.write open("tmp/_body.html").read
    file.write open("partials/_footer.html").read
  end
end

write_content(search(ARGV.first))
build_html
