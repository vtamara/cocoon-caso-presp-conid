require 'test_helper'

class CasoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "debe tener fecha" do
 		c = Caso.new
		assert_not c.save, "salvar caso sin nombre"
  end

end
