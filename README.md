# Google Image Search Carousel

Builds a pretty carousel from a Google Image Search.

The google-search gem is used to execute a Google Image search based on the
given search phrase. A page is generated from the returned results.

The fullscreen carousel was taken from [http://www.responsivewebmobile.com/posts/view/2013/12/19/13/Bootstrap_3_Carousel_Fullscreen](http://www.responsivewebmobile.com/posts/view/2013/12/19/13/Bootstrap_3_Carousel_Fullscreen)

## Build the page

Edit the _masthead.html partial to suit your search.

    bundle install
    ruby ./search.rb "bamboo forest"

## View the Page

    open www/index.html

You could serve the www directory from a web server.

## License

The MIT License (MIT)

Copyright (c) 2014 Scott Barr

See [LICENSE.md](LICENSE.md)
