require 'test_helper'

class CasoTest < ActiveSupport::TestCase
  test "debe tener fecha" do
    c = Caso.new
    assert_not c.save, "salvar caso sin nombre"
  end
end
