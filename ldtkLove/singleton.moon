class Singleton
  __inherited: (By) =>
    By.getInstance = (...) =>
      if I = @Instance then return I
      with I = By ...
        @Instance = I
