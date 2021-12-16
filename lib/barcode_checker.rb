class BarcodeChecker
  def self.valid?(barcode)
    @barcode = barcode
    return false unless @barcode.length.eql?(13)

    array_numbers.last.eql?(result)
  end

  private

  def self.array_numbers
    @barcode.split('').map(&:to_i)
  end

  def self.sum_numbers
    array_numbers.first(12).map.with_index do |number, index|
      factor = 1 
      factor = 3 if index.odd?

      number * factor
    end.reduce(:+)
  end

  def self.result
    temp = 10 - (sum_numbers % 10)

    temp = 0 if temp.eql?(10)
    temp
  end
end