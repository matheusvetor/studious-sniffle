require 'barcode_checker'

RSpec.describe BarcodeChecker do
  describe '#calculate_check_digit' do
    it { expect(described_class.respond_to?(:calculate_check_digit)).to be_truthy }
    it { expect { described_class.calculate_check_digit('9780143007234') }.to raise_error('The string lengh needs to be 12 digts') }
    it { expect { described_class.calculate_check_digit(9780143007234) }.to raise_error('The passing param needs to be a string') }
    it { expect(described_class.calculate_check_digit('978014300723')).to eq(4) }
    it { expect(described_class.calculate_check_digit('978123456789')).to eq(7) }
    it { expect(described_class.calculate_check_digit('978316148410')).to eq(0) }
  end
end