# frozen_string_literal: true

require 'ascii_cards'

RSpec.describe ASCIICards do
  specify do
    expect(ASCIICards::VERSION).to eql('0.1.0')
  end
end
