require 'youtube_search'

puts YoutubeSearch.search('boat', 'time' => 'this_week', :reqion => 'JP',
                                  :count => 10)
