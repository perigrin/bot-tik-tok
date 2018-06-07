# tik-tok
Time management irc bot (wrapper around Taskwarrior)

## TL;DR

This package assumes you have a modern perl and [Carton][https://metacpan.org/release/Carton] installed. You will want to edit `lib/TikTok.pm` and set the `server` and `channel` appropriately.

    carton install
    carton exec perl -Ilib -MTikTok -e'TikTok->run'


