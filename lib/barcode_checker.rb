class BarcodeChecker
  def self.validate(barcode)
    return false unless barcode.length.eql?(13) 
    numbers = barcode.split('').map(&:to_i)

    result = numbers.first(12).map.with_index do |number, index|
      factor = 1 
      factor = 3 if index.odd?

      number * factor
    end.reduce(:+)
    result = result % 10
    result = 10 - result

    result = 0 if result.eql?(10)

    numbers.last.eql?(result)
  end
end