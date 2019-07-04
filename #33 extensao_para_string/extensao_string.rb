class String

  def titleize
    self.split(' ').collect {|word| word.capitalize}.join(' ')
  end

  def blank?
    /\A[[:space:]]*\z/ === self
  end

end
