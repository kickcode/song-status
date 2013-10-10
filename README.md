# song-status

A Sublime Text plugin to show your currently playing or paused song in the status bar.

Supports Spotify or iTunes, only on Mac OS X.

It polls and refreshes every 3 seconds or so, so shouldn't be too intensive. It also does so only when Sublime Text is active.

It uses AppleScript to fetch the information from the running apps, wrapped and called using a Ruby script, executed by a Python written Sublime Text plugin. You know, so no one feels left out.

## Requirements

Sublime Text 3
Ruby

## Setup

Drop/symlink current_song.rb into ~/bin.
Drop/symlink song_status.py into ~/Library/Application Support/Sublime Text/Packages/User.
Restart Sublime Text.

## TODO

Would be nice to port the Ruby code into Python and include in a single plugin script, then put it up on Package Control.

Updated to work with Sublime Text 3 a while back, and not sure now if it'll still work with Sublime Text 2 or not.

Cycle through showing now playing, and up next on the playlist perhaps?

## Contributors

Elliott Draper

## License

Copyright 2013 Elliott Draper <el@kickcode.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.