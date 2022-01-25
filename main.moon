LdtkLoader = assert require "ldtkLove"


with love
  .load = =>
    l = LdtkLoader\getInstance "home/test/test.json"
