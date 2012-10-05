class DescriptiveStatistics
  module Shape
    def skewness
      return if length < 1
      return 0 if length == 1
      sum_cubed_deviation = inject(0) {|sum, value| sum + (value - mean) ** 3}
      cubed_standard_deviation = standard_deviation ** 3
      sum_cubed_deviation / ((length - 1) * cubed_standard_deviation.to_f)
    end

    def kurtosis
      return if length < 1
      return 0 if length == 1
      sum_quarted_deviation = inject(0) {|sum, value| sum + (value - mean) ** 4}
      quarted_standard_deviation = standard_deviation ** 4
      sum_quarted_deviation / ((length - 1) * quarted_standard_deviation.to_f)
    end
  end
end