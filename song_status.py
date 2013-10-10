import sublime, sublime_plugin
import os
import re
import subprocess
import sys

class SongStatus:
  def load(self):
    SongStatus.active = False
    SongStatus.loop()

  def loop(self):
    if SongStatus.active == True:
      sublime.status_message(self.current_status())
    sublime.set_timeout(lambda:self.loop(), 3000)

  def start(self):
    SongStatus.active = True

  def stop(self):
    SongStatus.active = False

  def current_status(self):
    return re.sub("\\\\n", "", re.sub("'", "", re.sub("^b", "", str(subprocess.Popen(["/usr/bin/env", "ruby", os.path.expanduser("~/bin/current_song.rb")], stdout=subprocess.PIPE, stderr=subprocess.PIPE).communicate()[0]))))

SongStatus = SongStatus()
SongStatus.load()

class SongStatusEventHandler(sublime_plugin.EventListener):
  def on_activated(self, view):
    SongStatus.start()

  def on_deactivated(self, view):
    SongStatus.stop()
