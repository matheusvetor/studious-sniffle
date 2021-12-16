require 'barcode_checker'

RSpec.describe BarcodeChecker do
  describe '#validate' do
    it { expect(described_class.respond_to?(:valid?)).to be_truthy }
    it { expect(described_class.valid?('978014300723')).to be_falsey }
    it { expect(described_class.valid?('97801430072341')).to be_falsey }
    it { expect(described_class.valid?('9780143007234')).to be_truthy }
    it { expect(described_class.valid?('9780143007233')).to be_falsey }
    it { expect(described_class.valid?('9781234567897')).to be_truthy }
    it { expect(described_class.valid?('9781234567895')).to be_falsey }
  end
end