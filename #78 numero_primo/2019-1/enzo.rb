module M
  refine Integer do
    def primo?
      return true if self > 1 && (self % 1).zero? && (self % self).zero? && (2..self - 1).to_a.none? { |numero| (self % numero).zero? }

      false
    end
  end
end
