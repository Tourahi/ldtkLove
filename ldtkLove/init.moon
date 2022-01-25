cwd = (...)\gsub('%.engine$', '') .. "."

Singleton = assert require cwd .. "singleton"
Utils = assert require cwd .. "Utils"

class LdtkLoader extends Singleton
  new: (path, plugins) =>

    assert type(path) == 'string', "path must be a string"

    -- Assert the file ext
    ext = Utils.getFileExt path
    assert ((ext == "json") or (ext == "ldtk")),
      string.format("Invalid file type: %s. File must be of type: json|ldtk.", ext)

    -- Get the path of the directory holding the file
    @dir = path\reverse!\find("[/\\]") or ""
    if @dir ~= ""
      @dir = path\sub 1, 1 + (#path - @dir)

    -- loading raw data
    data = @loadRawData!


  loadRawData: =>
    return


