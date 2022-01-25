Utils = {}

with Utils
  .getFileExt = (name) ->
    return name\match "[^.]+$"



return Utils
