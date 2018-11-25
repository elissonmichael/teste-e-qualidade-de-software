class String

  def titleize
    return self if self == upcase
    return split(' ').collect(&:capitalize).join(' ') if self[0] != self[0].capitalize
    return upcase if split(' ').any?{|word| word = /[a-zA-Z]/ }
  end

  def blank?
    /\A[[:space:]]*\z/ === self
  end

end
